
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../model/respons/ProductModel.dart';
import '../widget/carousel_slider.dart';
import '../widget/page_wrapper.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductData product;

  const ProductDetailScreen(this.product, {Key? key}) : super(key: key);

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }

  Widget productPageView(double width, double height) {
    return Container(
      height: height * 0.45,
      width: width,

      child: CarouselSlider(items: ['${product.images!}']),
    );
  }

  Widget _ratingBar(BuildContext context) {
    return Wrap(
      spacing: 30,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: double.parse('${product.rating!}'),
          direction: Axis.horizontal,
          itemBuilder: (_, __) => const Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (_) {},
        ),
        Text(
          "(10 Reviews)",
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: _appBar(context),
        body: SingleChildScrollView(
          child: PageWrapper(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                productPageView(width, height),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name!,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 10),
                      _ratingBar(context),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "\$${product.updatedSellingPrice}",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          const SizedBox(width: 3),
                          Visibility(
                            //visible: product.off != null ? true : false,
                            child: Text(
                              "\$${product.sellingPrice}",
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "About",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Html(
                      data: product.meta!.description!,
                      tagsList: Html.tags..addAll(["bird", "flutter"]),
                      style: {
                        "table": Style(
                          backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                        ),
                        "tr": Style(
                          border: Border(bottom: BorderSide(color: Colors.grey)),
                        ),
                        "th": Style(
                          padding: EdgeInsets.all(6),
                          backgroundColor: Colors.grey,
                        ),
                        "td": Style(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.topLeft,
                        ),
                        'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
                      },
                      customRender: {
                        "table": (context, child) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:
                            (context.tree as TableLayoutElement).toWidget(context),
                          );
                        },
                        "bird": (RenderContext context, Widget child) {
                          return TextSpan(text: "🐦");
                        },
                        "flutter": (RenderContext context, Widget child) {
                          return FlutterLogo(
                            style: (context.tree.element!.attributes['horizontal'] != null)
                                ? FlutterLogoStyle.horizontal
                                : FlutterLogoStyle.markOnly,
                            textColor: context.style.color!,
                            size: context.style.fontSize!.size! * 5,
                          );
                        },
                      },
                      customImageRenders: {
                        networkSourceMatcher(domains: ["flutter.dev"]):
                            (context, attributes, element) {
                          return FlutterLogo(size: 36);
                        },
                        networkSourceMatcher(domains: ["mydomain.com"]):
                        networkImageRender(
                          headers: {"Custom-Header": "some-value"},
                          altWidget: (alt) => Text(alt ?? ""),
                          loadingWidget: () => Text("Loading..."),
                        ),
                        // On relative paths starting with /wiki, prefix with a base url
                            (attr, _) =>
                        attr["src"] != null && attr["src"]!.startsWith("/wiki"):
                        networkImageRender(
                            mapUrl: (url) => "https://upload.wikimedia.org" + url!),
                        // Custom placeholder image for broken links
                        networkSourceMatcher():
                        networkImageRender(altWidget: (_) => FlutterLogo()),
                      },
                      onLinkTap: (url, _, __, ___) {
                        print("Opening $url...");
                      },
                      onImageTap: (src, _, __, ___) {
                        print(src);
                      },
                      onImageError: (exception, stackTrace) {
                        print(exception);
                      },
                      onCssParseError: (css, messages) {
                        print("css that errored: $css");
                        print("error messages:");
                        messages.forEach((element) {
                          print(element);
                        });
                      },
                    ),
                  ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          child: const Text("Add to cart"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
