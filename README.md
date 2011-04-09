## No More Sharecropping!

Originally posted at [http://iamshane.com/notes/2010/11/7/1/no-more-sharecropping](http://iamshane.com/notes/2010/11/7/1/no-more-sharecropping).

There was a time when "having a website" meant you owned a website that you could do anything you wanted with. Any kind of content. Any kind of structure. Any kind of software. You were truly the Master of Your Domain. But in all fairness, it was sometimes hard to be that (web)master.

If you just wanted to put pictures of your cat on the internet, but didn't know anything about HTML and FTP, let alone chmod and unix, you were in for a world of hurt.

And then came Blogger (amongst other things).

It was like Twitter without the 140 character ceiling. Just type stuff into the box and press the button. That was it! You just published stuff on the Internet. There weren't even post titles in the beginning. After that we would see a flood of hosted web services that enabled people to publish stuff on the Internet very easily.

Before we knew it, all of our content was being hosted by these web services. Flickr, Picasa and Photobucket had our photos. Typepad, Wordpress, Blogspot (and a slew of others) had our long form writing... called "blog posts". Delicious and Magnolia had our bookmarks and read later lists. YouTube, Vimeo and heaps of video sites had our movies. Slideshare had our presentations.

It all seemed like a good idea. Let someone else worry about uptime, backups, redundancy, bandwidth bills, etc. And for a time, things were good.

Then as we published all of our content on other services, we became dependent on them. We became digital sharecroppers. Which maybe wasn't so bad. But then... Magnolia lost all of its data. Six Apart bought Pownce and closed down the site providing no export option — or even much warning. URL shorteners cropped up, got popular and went away in the shortest of time, taking all of their short to long URL mappings with them.

And of course, there's Geocities. With all of its neon colors, tiled background, sparkly text and animated gifs, Geocities was a ghetto. But it was a huge ghetto. And now that Yahoo turned it off, it's gone. Imagine if every ghetto, barrio, favela and shanty town was literally taken away in one moment. That's a lot of very homeless people (even more homeless than before).

## Enough already!

It's time for something better. It's time for a web where any person can easily create a website and publish all kinds of content there. It's time for us to own all of our data, beholden to no one. It's time that our personal diy rolled websites play nice and integrate closely into external services. It's time for a real sense of privacy, where not only is our data "protected" from other seeing it, it's also encrypted at the source so that even if seized by criminal or government alike it'd do them no good. It's time for easy granular sharing controls allowing to grant access to some content to some people, not all content to all people or to no one.

There will come a time in the not too distant future where having a website will be considered a birthright. It's time that we start building the tools that will make that a possibility.

Instead of sharecroppers, we must become homesteaders.

### Some Additional Thoughts

#### As a person I want

- to have a website
- to own all of my data
- to participate in online communities

#### As a user I want

- to publish everything to my website
- my website to redistribute my content to other sites
- my redistributed content to link back to my site
- to choose which sites to redistribute to

#### As a developer I want

- to add outbound sites easily with a plugin
- to add inbound formats for publish with

#### Notes

- Installation should be easy, at least as easy as Wordpress
- Setup should short and simple
- Existing tools should publish to my website

#### New Blog Post Workflow

- I open MarsEdit
- I write a post
- I publish it (via MetaweBlog API / AtomPub)
- My website receives my post
- My post is available on my website ( http://iamshane.com/notes/2010/9/12/1/the-setup )
- My website generates a short url for the post ( http://sbb.me/n47j1 )
- My website updates its Atom feed
- My website alerts its subscribers that a new update is available (via PubSubHubbub)
- My website redistributes a copy of my post with the short url at the end to Wordpress, Tumblr, gist.github.com, etc
- My website posts the short url and title to Twitter, Facebook, status.net, etc

#### New Status Update Workflow

- I open Tweetie
- I write my tweet
- I publish it (via JSON to Twitter api clone)
- My website receives my update
- My status is available on my website ( http://iamshane.com/statuses/2010/10/5/2 )
- My website generates a short url for the status ( http://sbb.me/s4872 )
- My website updates its Atom feed
- My website alerts its subscribers that a new update is available (via PubSubHubbub)
- My website posts the short url and content to Twitter, Facebook, status.net, etc

There's surely stuff that I've thought about but am not thinking of right now. I'll write more as it comes to me. It's also worth noting that while I had a lot of these thoughts independent of talking with others, it turns out that more people are thinking roughly the same stuff. Discussions with Tantek really helped my thoughts coalesce, especially the personal url shortener work that he's done. He's using ttk.me with a one letter namespace, 3 character base60 number of days since epoch and one digit nth item of that type on that day. I am too. I jacked that all from him and ported his JavaScript / PHP version to Ruby. Thanks, Tantek. I've also talked a fair bit with Brian Ford and Rich Kilmer about all this stuff. Both had the idea of bundling the software package up into a VM instance that one could just throw at some server and hit the ground running. I hadn't thought of that before. Thanks for that, you two.

Let's get together and make this thing. Get into it.
