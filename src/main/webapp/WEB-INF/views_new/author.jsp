<jsp:include page="header.jsp"></jsp:include>

	<!--==================================Section Open=================================-->
	<section class="aliceblue">
			<div class="dashboard-tabs">
				<div class="container">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="active">
							<a href="#dashborad" role="tab" data-toggle="tab">
								Dashboard
							</a>
						</li>
						<li>
							<a href="#expiredlistings" role="tab" data-toggle="tab">
								Expired Listings
							</a>
						</li>
						<li>
							<a href="#updateprofile" role="tab" data-toggle="tab">
								Update Profile
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="container">
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane fade active in" id="dashborad">
						<div class="dashboard-tab">
							<div class="tab-header">
								<h3>Dashboard</h3>
								<p>Manage your listings and account</p>
							</div>
							<div class="user-details">
								<div class="row">
									<div class="col-md-5">
										<div class="user-portfolio lp-border lp-border-radius-8">				
											<div class="user-info">
												<div class="user-thumb">
													<img src="images/user-thumb-94x94.png" alt="user-thumb" />
												</div>
												<div class="user-text">
													<h5 class="user-name margin-top-0">Russel Jhon Lasker</h5>
													<label class="user-position">14 Listings</label>
													<ul class="social-icons post-socials">
														<li><a href="#"><!-- Facebook icon by Icons8 -->
															<img class="icon icons8-Facebook" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADEklEQVRoQ+1a7XHbMAwFNEE6QZIJmk5Qd4N4gmaDOAtQEBaoM0HTCepOEGeCuhPU3aBdgOiBJX10LFmMYsl0T7zLj9i0xAc8fEgPCA3LGPMREScAcOX/mrYO8fkKAFYismDmb3U3xOcfEtG1iHwCgIshTtjhHmtEvCOiRfzbLSBlWSqAmW4QkV9FUcwBYElEapGjLSJSVkystTNEPPcHmVdVdRcOtQFijJkj4q1+4REriOwWEc08Y9TY98zsDO+AeDp99SDeHdsDbdZTD4nId3/eqdLMASnL8qfGRM6eqInl4Jl1VVWXSEQ3IvJZY4KZcw3wWicZYzTwzxFxisaYB0TUVKuZIMu4aKJaiBcR+YJlWSrXrhAx+9iooVeIlZUCEd1QVdVOTWkLuhy+D+c/ChDfNVz7jiGOyyUArEVkVRTFU0r2PAoQnzY1zacmFZeR9nl+cCAexCMAnInIU1EUDwCwIKLf4aBEpL3dhbV2ogkohfKDAwlJRTMMM9+0xVdq7A4KJHQOL6lVWQLpUqtyBbJExPeI+IGINDNtFhFpzJQAoFlsJwm0lYVBqbXPusFbTTFzMkA2Fq3xVltC8A2vK+iDFMR9HkmNhSZQ2VAreyDhgLEl6/hety/+DSK+iYvmc8/07pFDATl6sL+GMtqqiMijtjLMrG1L4xrMI20WrTuhMYYQsUxpZ3IH4p5aRaRiZjpljzR2AicZ7Ih4SUTrLDzSNf2KyB9mPmur7r3HSHyAsbK3uePfy8Wx10qw0/aWkVoJJhuplWCknS0jtRKsNlIrwUgjtV5jpP/n5YMxZoWIb/sUevrKWkEUFZEfg0hvPQJxgqiT3iJpulWL6MLh+CXavrcoXR6JIzV66uS2SB3tRRDtwyOREOrU6EEGBg4NpHFgwHtlM8IhIjNmvu9Kpabn6kNQyxhzi4hORt8Z4Qg3judRvCg5TxUlU56ruwJRD1hrVZbQuRMnPcQg9P/aMSdrrXonTOEcyjEHuY6fWprtHXOK76TZzFrrJGStMwc5RceLaJ3QwbOiKFQ83ZrTCpf8CzG2NErUDo89AAAAAElFTkSuQmCC" alt="facebook"></a></li>
														<li><a href="#"><!-- Google Plus icon by Icons8 -->
															<img class="icon icons8-Google-Plus" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEh0lEQVRoQ+1a4VnUQBDdWQpQKhAqECsQKxAqACsQC2Azuw2oFXhUIFagViBWAFQAFkDG762z+fZCcknOSy5+n/kDHLlk3s7szHszS6blYuYDETkxxhwYYw7b7pvo82/GmCsiumDmq6Z3Uv1DBfB+Bsa3rdE3InpXB7QEhJmPROSTMeapiPwyxiystZfMjBXZ2sXMh2VZHhljTonoiTHmnojeMPNlMqoCwsynCsKIyIW19oyZ77dmfcOLmflpWZYfiAghb4joOIGJQJh5T0R+wBOKdDEnAA3hnxYdnnnBzDcRSFEUX7En4IkQwumcQSTbnHOXRPTaGHPpvT8m9cY19oS1dm9u4bQiqyLMbrBniGifnHOIubci8jGEcPYveCPzSmU7gCCdvSSiV9vOTkMXEdlMRL6KyHcqiuIOm3zoQ2Z2/z2AyMyMWsucCoj3/lGVX+uJE38pOeI/kIkXvvV1/z0yF08kO/7aI86510QEOrOnmqURI3K8tZbHqlFrA9Ei9EkpzQdjzE2NYgMQRNA70O02IbQpz64FJFF9rHIIYUk1QpCVZQmWAL2Aa+G9f7Mpg9ueMxhIIpeqAxrpDDOfiQjUZbymoD2DgWS02awqns45MNJnACIiX0IIUHajXYOB5FSmA0hkpGr5jfd+fzQUf7RUpFi9KntimVnI7LbpFtX9n9O9Y1OfvwVSaeX6auegm5LCpr0zCAhenofWKklcA+JDCNzH+DoL7+vJwUCcc4vUvdCMBNH/qFmWpehB0nkyINqKiRpZVxhFD2m4ahnhHnRjRGTXWns4pBhOBgTGo5aUZYnuxXMFAxALfGatjQ00EbnF72jR9AmpdM+kQNJLkZnKskRlR18YvbAEDEWwMeS6QG0FSG7UOul2XXndlAAGb/a2Fc1brZoE0GAGmWy95goE+wYbPyUBAFhJGGcH5Pz8/CWsttbCA9gv+fUoq7Vt7K79s4olrBVamrVOiAgZCoOgW+gRfRF+HtU80wqmbvxkm905VxBRrNIi4q21i3qKVU2CwlllMdzbp7pPAqQoCgx/Ype+K71q4YTAqmqN9363K3xGB1IbAPVqdCsYhFXUJeiWdxXI0YEURXGtDYZBii9fgC4v1kkp/t44acxXaoh0zTrlv0IIozXJe2ct5xzGW7FG9N24ysuifh97ClYBSYa2ubJG3wEKjLdx1p1xMbBgzC32x5yCKdu+Q2uqc9DTQN/vRYSttRjeP5r6akjBEwAxiMp3Zbb6/5cGPX1Gb1of0FSIlVwvgLgSkTiDJyJU9th1nGq8nduOYShejNE0wgZpsnW2roN71JODWtFDhb+y1gIUDhgM0iJDPaF7EOGLjAoZ8SIOd9IcsYvsrfPCsb6TinRqcFQHBhKDRfyHEPxYBmziuYkuaf/5oDowoK7COZTUjwJfgq6Y3REObckmurR8hCNLm5CwABEPriQ9vrOz83NboJA1Hx4enqeeQDrwY609bTxUk4GBUAKYPENtIiI28gydtwDEUkJpneRqyo0ZSrNUrgA3YlSfh+hxKxRgZEVIh8Zi/BvU1cKW0t95DwAAAABJRU5ErkJggg==" alt="google-plus"></a></li>
														<li><a href="#"><!-- LinkedIn icon by Icons8 -->
															<img class="icon icons8-LinkedIn" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEBUlEQVRoQ+1a7VEbMRDVqgHoAKgAUwFOBTEVBCoAGtCt1EBMBZgKMBUEKohTAaSCkAa0mXeRPPL5PmQP3MGMb4Y/Rnfa1dt9+yVSDY8x5hsRjZVSo/DXtLSP3xdKqYWIPDrn7uo2pOqPzDwRke9KqcM+JNxijxciumbmefruiiJFUUCBKywQkV9a65lS6pGZcSKDPcwMqxh778+J6DgIMrXWXkehlooYY6ZEdCkif7XWzMzTwSRv2ZiZr7z3TER7InLjnCsPvlQkmNN9UGI8NAJdBwiERORnqQDRGcysVKQoimf4RLC9D4lEjS9fBV9+sdYeETOfi8gtfMI5B1v8NI8xZgGfASpkjJkREagWTPAp0IgnDX8BKiJyR0VRwNZGRHTS5BshpsCpImLg9GkTp/cFaeIrCygi2NhauxZTgv/cKqXOG4SbWWsv+hK8bp8of6siCXSgZCASg9DEew+63iOiC2ZGvBnkyVIkMbuS4lJJI0kgdbDWngyixX/GLS2qFZE2s2PmfRH502aWfSiXpYgx5jWYzxEzv1QQORSRZwRR59x+H0Jv7SORmuEb1tqz9ENFUdwrpZBg3jnnmsjg3fXLQoSZD733CDp7SikgsnR2ZAIhpRlV0Xp36ZMNshQJedjIez8nooNUQBH5rbWeDJ2XZSuSRFGk0Si0lNZ6UWWxPlGomHgWa5VRv0PI0n8iVeesZeaxiHxFjZF8/zVUgXOt9UOuuWYhEhd1nTaygty1wc8mHd98DSmQ7dp7I0Va0pdlepOR6pRr8YAklFJTrfU8+hjiUqgCJ0hiw1IQzRdmBlq1z2CKhBIaxVujcEgGvfePgS3XqH8bH+lKKLMRQe0QiKJViYRcltTfls/1jkiXrdf9P8nnyipw68iea/epszf5UxTCGFMQETIBtJteRGSmtb5pMjVjDNo/B7E2ryozCCItFN3o1MYYdEyKtGMyqI8ktc0yIwgpELKGYxGxzjmunniIOT9E5Mk5VwbkQRVJapuVQiy2oprqmqRcqPWT3k2rzd828cWPgEgjle8UeYtSFxCnJ/kWp5qTCu1MCyeQc1I7RCom2paG1B3ojn7rompOrrWLIx2mtzOtnWm1jC/egroxsYrjq7VBT25nZJMuShuFdlWR1XfjoAd9gNbRmzEGDYDTtg1E5ME5N9lkbfV72767Mnr7KHOOLjQaAmUcG56V47akLv40A9G04nTOHa5cGFBKYR6ChtigVza60Gm8MBBQKa9wQBkRYefcTdcHh/i/MeaSiMox+toVjqRVE5XBTxhBo1XzNDRCofN4GtpIZVO92lWpveYUJrYr85AhTr9uzzCXuWq95pS+CDYL8xBcJohXiwbRB3ECFqK1xpWr2lH4PxVzvVlIavAKAAAAAElFTkSuQmCC" alt="linkedin"></a></li>
														<li><a href="#"><!-- Instagram icon by Icons8 -->
															<img class="icon icons8-Instagram" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAFpElEQVRoQ91ai1EcSQxtNQGAIzCOwDgC4wgMERhHYJxA/xI4HIEhAkMEhyMwjsBcBIcDoHX12uopbTOzO+zOfuq6ylXeYXemX0tPepKGzMByzn0gomNjzJH8G/rqJq7fGWPumPk6pXTT90BqL4YQTpj5L2PM4SZ2uMQz7onocwjhWv92Boj3HgDO8QVm/sdae2GMuQ0h4ES2tkII8IrjnPM5Eb2UjVzEGD/XTXVAnHMXRPQJfxDEALFzK4RwLh6Dw/6SUioHX4CIO30TEG+2bYFFpwcLMfMP2e8p3KwA8d7/Aid2yRIhhANm/mqMOWmAXRPRR2PMmVjmPsb4ikIIuPAVnEgp7QzBvfd/gxd91mHmm5TSiXMOxH9JRKfknLskIoRaRIKd4YX3nsV1XoQQHoQCsNK/+H+MEUYofGHmK/Lew9eOiGinuFGBYMPaKvq64sodgBTk7Q8WEW7dfx8DRPj9x3JTA5FT+iBq4ECpAuQiuMgdEV0tioxjXGstQJxznojOnqEI7pn5MqUU+6zrnLslorfzyD4pkBDCsYTJEvEQ/Ywx19ZaSIiHevKSnQ9yzginJypDI/J8DCHc6k0j/OacEYje6+uIWNbasxoAOsut4lqNpPlurQ3thoa4hAPIOYd66sx8nlL68lzurQzEe49kBVd6Immcc++JCCcPK0EnYYEjcKcZBaslhzHmMsaIZDd6DQKp4XjMnZj5t7X2pFpBpD9yEUg+bz2IBa4kP8A6yNj7Y54LIRtjfDeXIxXhmBsS0TuAEDmBTFxOn5nhZpewQsORo5zzmSIxIhjuAS6Ba7jHqFXTxTyLDOYV2TASaKfLNAhm/mmtPV/EE+EH1PZrCccVTFW2CABI0CWj69VyeikgzjmQ0+PEU0pFB1VXFBDHfQ/vO2KJSgixBUyM8Q2+V8MuM8eUUlgLEKWSi0spYLDEaBB1cxpM3bhysaJqJwdSa5aqksWlIP8PKldGOXfzJbXxByJ6BYtqVduWtCu7Vq0ga1Wm5H/nZssA0e4kifGyfdakHKm+W0/fOYdwiXyBrIwItfRSh1LqjGolzcV685Ut4r1HHQA3KnJ/Svmv5ThIrz4/xBhfTGqRoZOYSv6Pvf8UFpnJL6totD4f3BgQ5xyy8OvqWu3npQnyp4tTuiLIRSmlo/bzpK71vyH7UPjVAm5Zq9SOyUbCr4okJeNKVoYm2p8iIYqSPkRCVAriSUNkZbJL4kL27TZeJYoWfs+xSiM4i7ZSOaS3zzYVkCIaqzu1wq9K8jFgWtUMkjcidH2iUaxSu3uloaddTCyD6zP1dwtMTh2df0QrFGfFpVTDbbDrOYlFsKGm4d0VVjnnKsnxtVt0SKy1P3VhlXNG+EZ5XEoALf11YYUWaCsWJ5Mo+lQVN8AZPLRUiZhfYL6yqGSFFYwxF5i/qOoQ0wC0RHtdai1AxMVKz1hOtuuAABDaPdL2QSWJwqmcPpoP0ia6rgWYc+4TEZWeM3q4KaXS0Bhak7nWgGWKOxFRXMSP+nvNEwEx1xJrs4jaEE4f9Xcdid2jQYeuyN7e3m/NkcfHx310XWTm0TX0pM6fmQlu1CKtdcbwo/6m8qSvLt+4a/U9EAoALZ/axG44UprYaBUtamJPZhGpn+EmO7NCCIfMjD5BNwbp2kE98ryWsDs1wZIcVidUtSTu5P+T0Vutn9FJF8mx1Rm7CirYNDqRKLdLn2Bm9KYydddHUrMJ9GiDtfYmhLAVN4M75ZzR5ECzDgmzWAMAlUo+LfM51UfS+gku1jto2RZp9Gyk1WVzXxiAmyFDt8OWTQMRAFADpe00+MKAWKV7hWPZocsmADaSZvYVjroB/T6KDGUg7L4vG/OnAia56S0RQZRWRdCBwHN6X3NqJMdU+5nkPvLWEkYXw6856SchmomCxcsERcFua4lyhiIAT3o12X88y0p38cxWCAAAAABJRU5ErkJggg==" alt="instagram"></a></li>
														<li><a href="#"><!-- Tumblr icon by Icons8 -->
															<img class="icon icons8-Tumblr" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADxUlEQVRoQ+1a4VXbMBDWaYHSCYAJoBOQDUomKExAGAD5pAUKExQmIExQmKDJBE0ngC6g6/v8pDzF2LETm8Tpi97Ln8iS7tPdfTrdiVRFM8Z8I6KBUuo0/Ko+3cT/E6XURETGzrmnsgWp+Cczn4vId6XU0SYkXGONGRFdM/M4HbsAJMsyABjhAxH5o7W+VUo9MzN2ZGuNmWEVA+/9iIgOgyC31trrKNQciDHmloiu0BEQA0TvGjOPgsVgs++cc/nG50CCOT0GEF+2rYG63YOGRORXkHcIM8uBZFn2Gz7RZ02U+HLUzMxae0zMfCEiP+ATzrm+OnipkowxcPxDIhqSMeaeiEC1YIJe+kWVqUV/EZEHyrIMtnZKRK19wxjDRJQVF06dss7+V+lPfGUCIILB1tp3Z8oqkwZfe1VKHZSN62L+snmj/J0BYeYDEXkVkb/OuTmYLjdqU0AQETyKyItzDqFN3nYOSBVp7BSQ6HQwK631ETO/7ZxGgm+A+Y5ExDrnOLXlndAIM0N4hDYIGabOOQR3C633QMJ9BQco2GqqtR6kJlU0rSVUfm+tvVyV6ovzr0y/wR8Q7ufMJCJPWuuLMhDoN8Y8E9HZMkHbnDFrnyMxwAz3FWbm+7a7uS0gXUYCredqo5HWi3dJzXsgcQcKfjG21g4rYqGfkRiqfGkrPpLe7VPBqoSpAD4firuEc+6iLWGsTL+rHni9PxCbOuweSENbW5u19qbVwVX6Q2+IdT5Q19/Qgio/25vW3kf2PrLcizbmI8aYCRGdID9bLM5ARGYeiMgVET2U9deRQWdAEkFLU65JPeNNRJBBR+IZmX/c78+TytibtfZzneBVPto61jLGjInoKxFdVt0WY86rTEjcNGMVap0ouDONJBnxJ+ccdri0oZjkvY8amCmlZlrrMYpKbc6aLoHkOV9IT0THzAwhV2q9AAKJE9OpvGAtQ9YbIEjUee/BTp+UUo3zVIGxUE8Bcy1k8ZuqdG5adazTdEII5b2H4wPMTERYaz1NC6s3NzdnRHQQHiLExwjIjSFnjNzYQu28bu0k5zzttPSGiQOYWAtfKgsYCxpEPb8qwbdsgoXSW1KazqujdbvQpB8F1sBQg6ChfBhSq9AWnmNExmoyX9U3STV6mJfbkurozhREE23k1ej/68FA0Mr8CQdCCefcXRu1f9RYYwzisryM/u4JR1y0kLMC89xqrV+2/aQjkAgYD+9O8kcNxZJ36TMn7z2004h5Pmrnq+YNVYDR0mdO6eAkNsJjgpNNC5yuF9guMl3pWfMPzOt9SgN4YEwAAAAASUVORK5CYII=" alt="tumblr"></a></li>
													</ul><!-- ../social-icons-->
												</div>
											</div><!-- ../user-info -->
											<div class="user-portfolio-stat">
												<ul>
													<li>
														<i class="fa fa-map-marker"></i>
														<span>2895 Kalakaua Avenue Honolulu</span>
													</li>
													<li>
														<i class="fa fa-phone"></i>
														<span>+91123456789</span>
													</li>
													<li>
														<i class="fa fa-envelope"></i>
														<span>info@domain.com</span>
													</li>
													<li>
														<i class="fa fa-th-list"></i>
														<span>3 Listings</span>
													</li>
													<li>
														<i class="fa fa-fire"></i>
														<span>2 Hot</span>
													</li>
													<li>
														<i class="fa fa-bolt"></i>
														<span>1 Expired</span>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-7">
										<div class="user-description-box lp-border lp-border-radius-8">
											<h5 class="text-about">About Russel Jhon</h5>
											<p class="text-justify">
												Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi arch itecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit  aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
											</p>
											<p class="text-justify">
												Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi arch itecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit  aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="user-recent-listings-container">
								<h3 class="padding-top-35 padding-bottom-35">My Listings</h3>
								<div class="user-recent-listings-inner">
									<div class="row lp-list-page-list">
										<div class="col-md-12 col-sm-6 col-xs-12 lp-list-view">
											<div class="lp-list-view-inner-contianer lp-border lp-border-radius-8 clearfix">
												<div class="lp-list-view-thumb">
													<div class="lp-list-view-thumb-inner">
														<img src="images/listview/post287x191-1.jpg"  alt="list-1" />
													</div>
													<ul class="lp-list-view-edit list-style-none aliceblue">
														<li><a href="#"><i class="fa fa-pencil-square-o"></i><span>Edit</span></a></li>
														<li><a href="#"><i class="fa fa-times-circle"></i><span>Remove</span></a></li>
													</ul>
												</div>
												<div class="lp-list-view-content">
													<div class="lp-list-view-content-upper">
														<h4>The Dorchester grill</h4>
														<ul class="lp-grid-box-price">
															<li class="category-cion"><a href="listing.html">
																<!-- Home icon by Icons8 -->
															<img class="icon icons8-Food" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADaklEQVRoQ+1aQVbbMBD9013YlJ6gUS9AOAHKCZoscRZNT0B6AuAENSdoukhYAiewOQHhAlU4QWEDu07fKLZxDI4jm5S2T14ltjTSn5k/kr5NemKuiNDBK1wMnMeB6ueHlvnI/3igdl3uU3dq+BUwZENGgaL8+Ol8XO9nQIodNw2u7oTLAHogTSPmI1LCKZ9aPrUSD3iOeI40JUNJf59aPrV8aq32wAqOzKRnFKilo0V3asru2937X7eyuyZA6hAPxNVzxfZlqeVq9zEikx9zEL1ngor31dzVUJ32+tS0iWHAfBMNPrTr2Ej75FMrBrDHhG68r+T3xi99ajQxIgCXUaB03QFzdq5JT01IwAEzjuOBOqpr1KWfnpgjIhwycBIHauTSd0mQmJqIAC1zFyA9As6aesdlMqlyw0A/DtS5S9+0rZ6YIRG+AXzHLWqTPjPb9MBzgN7+CZ5k/EgmEPfVrQuQ7tTsMTAioGdBEPWEElaKyYX6exyooYth17Z6asYEfHJNZZ2kUTYe8w2DevFA2YVyAcRWEZ4lUdkY6R/JaT3ZcamSaXVixgVE2Buocd6JmTimp0bC9ZWBOVrYdQ15VWQkhfGAKwLaDHyJAxVW9ck/r1p3iirfohQzZthC96XAWBD3iBJptlbJdQKyID4EzA4DMVroNwVTAHHNLeg6Np2AWL4sg5mD0U8J5ZIKSRHpgHAm6QSgNgix5QwkBYN7jInwUf4zY4w3OF6XnFI88AuHRLAV0BJ0C8M6kShuRco06iWOFD2+WHQ4lGqWTEhKnYC6KIJKJi/AZaFKzhJ8x0yjYoVxjWztiCxtAxZEHRF4KJvLBNBtPFDvltpNzE8ibNt7ixo/xhbCJlGoXbWqPKUnpkME+yKmTN5nxm5dTq0avxZH6hisGqjKSVXPq+yv5Mhzxl31qKoJrvvcAynzlI/IujlU0s6nlk+tgsjcMKOy7j61/uvUym1RrktE5p1/YouSCQfP6FGZPgZsRMB4MY7oiTkgQphIME+EgyUBgyFb95OXInqjbXxyUpRUkVOeCBNWo2XG57LzxaNoBlgRgxESYRYF6rIpKOeIlH6/JWcMolGVMmiVS+YwPbvkAYioUfwOa12AzkCSN0M7yQCX1rOLD8ScpE0BBEDkWInkXmLvSZFwAPLsG6u0/288R19KOGbU8gAAAABJRU5ErkJggg==" alt="restaurents">
															</a></li>
															<li><span>$50,000</span></li>
														</ul>
													</div>
													<div class="lp-list-view-content-bottom">
														<ul class="list-style-none list-pt-display">
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-calendar"></i>
																</span>
																<span class="lp-list-sp-text">
																	03 Feb 2015
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-clock-o"></i>
																</span>
																<span class="lp-list-sp-text">
																	07 Days Left
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-check"></i>
																</span>
																<span class="lp-list-sp-text">
																	Published
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-fire"></i>
																</span>
																<span class="lp-list-sp-text">
																	Hot Lisiting
																</span>
															</li>
														</ul>
													</div>
												</div>
												<div class="lp-list-view-paypal">
													<div class="lp-list-view-paypal-inner">
														<h4>Pricing Plan</h4>
														<div>
															<p class="lp-list-view-paypal-tit">Free</p>
															<p>Upgrade your Pricing Plan</p>
														</div>
														<div class="lp-list-view-select">
															<div class="ui-widget border-dropdown">
															  <select class="comboboxs">
																<option value="">Select one...</option>
																<option value="Free" selected>Free</option>
																<option value="$25 - 30 Days">$25 - 30 Days</option>
																<option value="$40 - 30 Days">$40 - 30 Days</option>
															  </select>
															</div>
														</div>
														<div class="lp-list-pay-btn">
															<a href="#">
																<i class="fa fa-paypal"></i>
																<span>Via Paypal</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12 col-sm-6 col-xs-12 lp-list-view">
											<div class="lp-list-view-inner-contianer lp-border lp-border-radius-8 clearfix">
												<div class="lp-list-view-thumb">
													<div class="lp-list-view-thumb-inner">
														<img src="images/listview/post287x191-2.jpg"  alt="list-1" />
													</div>
													<ul class="lp-list-view-edit list-style-none aliceblue">
														<li><a href="#"><i class="fa fa-pencil-square-o"></i><span>Edit</span></a></li>
														<li><a href="#"><i class="fa fa-times-circle"></i><span>Remove</span></a></li>
													</ul>
												</div>
												<div class="lp-list-view-content">
													<div class="lp-list-view-content-upper">
														<h4>5th Generation Laptop</h4>
														<ul class="lp-grid-box-price">
															<li class="category-cion"><a href="listing.html">
																<!-- Home icon by Icons8 -->
																<img class="icon icons8-Food" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAABYUlEQVRoQ+1Y0VGDQBTcTQNqBYoVxA6wAv01aUIr0SbUX60glJAKgqnA0IDrQEYnAnKTOcgdmccv947dt3vvmCVG/nDk+GEEQitoCkSpQPqaX0B4hJCSOA0JUsIGRAbiIbtLPupYGhYqwVPIQ4Ju+3ZFZIKrOokmgef8jcRNbARKPBLes3lyu4utjcBnaNv817xShWyenHUSuH7JtbtgMUuCTioXngY4V8GhreXCYwSGVsQUsEPs6TGzkFnILNT9Z2AXmadDnOU2hWwKOU3SvcAsZBYyC+19ka02AE88GzdQuYrF7PJPTnWEsUqkwRagQuTUGWyV2lfR4heeSKXh7aRCYoYJ7lujxfpFMZB5B9uWR0Ag5qnjEE5aM404zHX5rgx7uY3TtQx/WF1w6++3U6m6B36nDjQFeb7vVgddL60FLn+mUtDkuQ/iRqCPLvrsYQr4dK+PWlOgjy767DF6Bb4BAAIIyCXX8RcAAAAASUVORK5CYII=" alt="restaurents">
															</a></li>
															<li><span>$200.00</span></li>
														</ul>
													</div>
													<div class="lp-list-view-content-bottom">
														<ul class="list-style-none list-pt-display">
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-calendar"></i>
																</span>
																<span class="lp-list-sp-text">
																	03 Feb 2015
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-clock-o"></i>
																</span>
																<span class="lp-list-sp-text">
																	30 Days Left
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-check"></i>
																</span>
																<span class="lp-list-sp-text">
																	Published
																</span>
															</li>
														</ul>
													</div>
												</div>
												<div class="lp-list-view-paypal">
													<div class="lp-list-view-paypal-inner">
														<h4>Pricing Plan</h4>
														<div>
															<p class="lp-list-view-paypal-tit">$40 - <span> for 30 days</span></p>
															<p>Upgrade your Pricing Plan</p>
														</div>
														<div class="lp-list-view-select">
															<div class="ui-widget border-dropdown">
															  <select class="comboboxs">
																<option value="">Select one...</option>
																<option value="Free" >Free</option>
																<option value="$25 - 30 Days" >$25 - 30 Days</option>
																<option value="$40 - 30 Days" selected>$40 - 30 Days</option>
															  </select>
															</div>
														</div>
														<div class="lp-list-pay-btn">
															<a href="#">
																<i class="fa fa-paypal"></i>
																<span>Via Paypal</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12 col-sm-6 col-xs-12 lp-list-view">
											<div class="lp-list-view-inner-contianer lp-border lp-border-radius-8 clearfix">
												<div class="lp-list-view-thumb">
													<div class="lp-list-view-thumb-inner">
														<img src="images/listview/post287x191-3.jpg"  alt="list-1" />
													</div>
													<ul class="lp-list-view-edit list-style-none aliceblue">
														<li><a href="#"><i class="fa fa-pencil-square-o"></i><span>Edit</span></a></li>
														<li><a href="#"><i class="fa fa-times-circle"></i><span>Remove</span></a></li>
													</ul>
												</div>
												<div class="lp-list-view-content">
													<div class="lp-list-view-content-upper">
														<h4>Buy now 10 shots </h4>
														<ul class="lp-grid-box-price">
															<li class="category-cion"><a href="listing.html">
																<!-- Home icon by Icons8 -->
															<img class="icon icons8-Camera" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEXUlEQVRoQ+1ZTVrbSBB9xWrMJswJQs8FhpwgrRPELCMvQk4QcwIyJ4g5AWRhZYlyAjcnIFxgmpxgzCbJipqv2mohbP20bIn444MlVv+8rupXr14TnsgfPREceAaybZHsJSL6wu7hFz7gDkMiHLQBzYxv2EGKP3BqDtU8dGznQByIH5i1BbC8YQdoF1EomO6BJHZCwAeAb5loaN4qE3qq8p3+YjUxpwC9YODUxGocMr4UiE7sjABdNQEDqYnV4fLv+ovdJ4aV/zPjlRmpbyGbWJlnag+IcOXmISjzVt00zVMKJEosNw2cxWplrJ7aj0Q4YeCzidVR0xx1v+vEnhPwjhn/mJH62DTX6mYS+46AcxlYttkQkAwcmlilTYs3ABkScFF6d0rIIAeip/YAhAsC9rPB17NYrTBOlFjJ+dc1mygdtw6oKLGSmn+XjWXGHIT3/sAcEAcCjmn2mPEVhPNNT3SdjYeMETLAHcZEeOPuUBZ9cnT5E1cSidB8DFmw72/01B4R4cxFZheK/AUFcDmLVSVTbbIxYTPc4Q0IQzD2fI1xtYIwByPFDr6GsFNxH3pqU4mMBIB8zhcvqAsf48wNkjxsWQv8Ytk8J3VUXtwYAwaM41DaXtQczORAJCL/ubsxwJ++iurEWn/pGbgxsVJtI6IT+4mArJjxLYOExVIwbvxGM4IRchkSeChFMMv7iYnVcciankUlIq5mFKk2Sv6d+0nB/H02+sszWePc2Z0T9tOuujNNsItJk9TIpM2YiMdZVTcY4LBpXC0QF7I7drWEd+ioTWrdqwIHQoemSZ6Orqqz8WBMrKK606sF0njsFR/oos4a0H7TaVatI9Ghn3wTorc6B+IvXpZOrSOxDEruTx6ZGt3WPZBMaHZZiwrazVSlWKdA7lUv3/IGKbUSlWKKVajgboEkdkzApy5U7woYr4KBYxOryfLvnQIpK6rrEkYJEK+CS5VHp0D01F6J7NikmapksKzJkuptRupV3xFZKapdRUTmKSvafv5OI1K3UBeAHhOIa4D6TC0AVY2ey4ZSrdX2FJ/OZX8q9OsLou/W1tVYZQURP2Bdm/EYBTFjFmdK9CFR6rrXTllLgCxEHq5cVICorXwvE40FQ6TS7OsciAOTyfhNUyxrshYp1WCb9gJkKcXWikzRmgoxRHoDsmiKIP253Jc5djAJeSIoPEWIZ7UnIHiAYRNx9AYkb1nzbtEZ2hKdlICUge9F84GAlwwMnQGxACCmW7AL3zuQAgGI9K6zWIv3/JIZ4zZEUQSykBeEqI3J0Kb6O4OOxfJxJy+n7v3cawBzeaYAIW1t0GW+lsiX3GmsevNos+HH/tY7Ns5pfOBYMN6bkXI20Lb/ee/XmR0D2l+48YnN3yIkMgRMZrG63EYwUWJfMyCttaTpvRtfYBmxLc9zh3EbUTzYk7Nhjx68j+RgFi+ywuOCtvSBZQvwXbO490s2bOevur8L6DOQ33XyVes+R+Q5Ij2dwP9TYAKAKNjkVAAAAABJRU5ErkJggg==" alt="camera">
															</a></li>
															<li><span>$50.00</span></li>
														</ul>
													</div>
													<div class="lp-list-view-content-bottom">
														<ul class="list-style-none list-pt-display">
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-calendar"></i>
																</span>
																<span class="lp-list-sp-text">
																	07 Feb 2015
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-clock-o"></i>
																</span>
																<span class="lp-list-sp-text">
																	15 Days Left
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-check"></i>
																</span>
																<span class="lp-list-sp-text">
																	Published
																</span>
															</li>
														</ul>
													</div>
												</div>
												<div class="lp-list-view-paypal">
													<div class="lp-list-view-paypal-inner">
														<h4>Pricing Plan</h4>
														<div>
															<p class="lp-list-view-paypal-tit">$40 - <span> for 30 days</span></p>
														
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12 col-sm-6 col-xs-12 lp-list-view">
											<div class="lp-list-view-inner-contianer lp-border lp-border-radius-8 clearfix">
												<div class="lp-list-view-thumb">
													<div class="lp-list-view-thumb-inner">
														<img src="images/listview/post287x191-4.jpg"  alt="list-1" />
													</div>
													<ul class="lp-list-view-edit list-style-none aliceblue">
														<li><a href="#"><i class="fa fa-pencil-square-o"></i><span>Edit</span></a></li>
														<li><a href="#"><i class="fa fa-times-circle"></i><span>Remove</span></a></li>
													</ul>
												</div>
												<div class="lp-list-view-content">
													<div class="lp-list-view-content-upper">
														<h4>Hotel Rammizine </h4>
														<ul class="lp-grid-box-price">
															<li class="category-cion"><a href="listing.html">
																<!-- Home icon by Icons8 -->
															<img class="icon icons8-Food" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAACWUlEQVRoQ+1ZvXnbMBB95zKN5REwQZQJAk0QuwxZRJnAHsEj2BNYKciUsScQNrAzAUZI0qQ0/IEy80E0IQIgKOhTwE68H9w7HN7hKMLAw79LrlXEZyb6VFPL25hoEEgt1w2Qgi16gSSW7wTCKznHCT5BYU7AuVZWwD0IT3jGQ2OcUC5K9tRNqnVHeC1XBHwxDRTwTRRsqd+lljsD0YqLWmrk71+Nfq4LNjcdpJabsew8I7ySvwjqz6a06FSU7Mw0Ti13AsJ/yBn+4kqU7LoppUpe4x1uxAX73fxOLHcqreawA5cAzokwG2K2fciVgk7gPYBbp8POK7kkwt0+ggtdQyl8FSVbWUtL7wQRHl/p9hYKqz70oQGMsWuqhLCkTaVAKXwwY9s67C2lKr19Bbsas/BUtryWNxqM2Qr0WttANEsRZl20UwUV4retGn1mTBbdArKopdLO1wUbvLqEBBHLpi9OJyC8ko9E2GqGbVD66iIKdtHpL5PqBwNpDW0Z7e7gvvTNdZ12xFZyh/T+/wRyDKWlp8OPfUCUwoMoWTOztM+illPrv2FXp9KKRZux/ASzVqwAYvkJBpL7iGULYvWd3EdsmTyE906sta8rh2+fCimtqfuCr//cR2K1gCh+ch85psPeOwLneaTzTSBGQnIf+ffxIc8j4UwcTL/hS05jGQwkzyN5HtlkwIeWvej3EOYOG0AvIGPmBZcMj/HvCmT0vDAAZLR/JyC+JOpT276+R5WW72IZiGPGghuio3/z26/XtT+G/+M+I74ZSqW/63OQlQZTBWtbt/t3xgvz/SNvFqVEmwAAAABJRU5ErkJggg==" alt="restaurents">
															</a></li>
															<li><span>Price on call</span></li>
														</ul>
													</div>
													<div class="lp-list-view-content-bottom">
														<ul class="list-style-none list-pt-display">
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-calendar"></i>
																</span>
																<span class="lp-list-sp-text">
																	03 Feb 2015
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-clock-o"></i>
																</span>
																<span class="lp-list-sp-text">
																	07 Days Left
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-check"></i>
																</span>
																<span class="lp-list-sp-text">
																	Published
																</span>
															</li>
															<li>
																<span class="lp-list-sp-icon">
																	<i class="fa fa-fire"></i>
																</span>
																<span class="lp-list-sp-text">
																	Hot Lisiting
																</span>
															</li>
														</ul>
													</div>
												</div>
												<div class="lp-list-view-paypal">
													<div class="lp-list-view-paypal-inner">
														<h4>Pricing Plan</h4>
														<div>
															<p class="lp-list-view-paypal-tit">Free</p>
															<p>Upgrade your Pricing Plan</p>
														</div>
														<div class="lp-list-view-select">
															<div class="ui-widget border-dropdown">
															  <select class="comboboxs">
																<option value="">Select one...</option>
																<option value="Free" selected>Free</option>
																<option value="$25 - 30 Days">$25 - 30 Days</option>
																<option value="$40 - 30 Days">$40 - 30 Days</option>
															  </select>
															</div>
														</div>
														<div class="lp-list-pay-btn">
															<a href="#">
																<i class="fa fa-paypal"></i>
																<span>Via Paypal</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>			
					<div class="tab-pane fade" id="expiredlistings">
						<div class="expiredlistings-tab">
							<div class="tab-header">
								<h3>Expired Listings</h3>
								<p>Manage your listings and account</p>
							</div>
							<div class="row lp-list-page-grid">
								<div class="col-md-3 col-sm-6 lp-grid-box-contianer lp-grid-box-contianer1" data-title="The Dorchester grill" data-reviews="4" data-number="+007-123-4567-89" data-email="jhonruss@example.com" data-website="www.example.com" data-price="$200" data-pricetext="Text about your price" data-description="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi archeum" data-userimage="images/user-thumb-94x94.png" data-username="Jhon Russel" data-userlisting="14" data-fb="www.facebook.com" data-gplus="www.plus.google.com" data-linkedin="www.linkedin.com" data-instagram="www.instagram.com" data-twitter="www.twitter.com" data-lattitue="40.6700" data-longitute="-73.9400">
							<div class="lp-grid-box lp-border lp-border-radius-8">
								<div class="lp-grid-box-thumb-container">
													<div class="lp-grid-box-expired">
														<ul class="lp-post-expired list-style-none">
															<li>
																<i class="fa fa-bolt"></i>
																<span>
																	Expired
																</span>
															</li>
														</ul>
													</div><!-- ../grid-box-expired-->
									<div class="lp-grid-box-thumb">
										<img src="images/grid/grid-1.png" alt="grid-1">
									</div><!-- ../grid-box-thumb -->
									<div class="lp-grid-box-quick">
										<ul class="lp-post-quick-links">
											<li>
												<a class="icon-quick-eye md-trigger" data-modal="modal-2"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div><!-- ../grid-box-quick-->
								</div>
								<div class="lp-grid-box-description ">
									<h4 class="lp-h4">
										<a href="post-detail.html">
											The Dorchester grill
										</a>
									</h4>
									<p>
										<i class="fa fa-map-marker"></i>
										<span>Brighton, The City of Brighton</span>
									</p>
									<ul class="lp-grid-box-price">
										<li class="category-cion"><a href="listing.html">
										<!-- Food icon by Icons8 -->
										<img class="icon icons8-Food" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAADaklEQVRoQ+1aQVbbMBD9013YlJ6gUS9AOAHKCZoscRZNT0B6AuAENSdoukhYAiewOQHhAlU4QWEDu07fKLZxDI4jm5S2T14ltjTSn5k/kr5NemKuiNDBK1wMnMeB6ueHlvnI/3igdl3uU3dq+BUwZENGgaL8+Ol8XO9nQIodNw2u7oTLAHogTSPmI1LCKZ9aPrUSD3iOeI40JUNJf59aPrV8aq32wAqOzKRnFKilo0V3asru2937X7eyuyZA6hAPxNVzxfZlqeVq9zEikx9zEL1ngor31dzVUJ32+tS0iWHAfBMNPrTr2Ej75FMrBrDHhG68r+T3xi99ajQxIgCXUaB03QFzdq5JT01IwAEzjuOBOqpr1KWfnpgjIhwycBIHauTSd0mQmJqIAC1zFyA9As6aesdlMqlyw0A/DtS5S9+0rZ6YIRG+AXzHLWqTPjPb9MBzgN7+CZ5k/EgmEPfVrQuQ7tTsMTAioGdBEPWEElaKyYX6exyooYth17Z6asYEfHJNZZ2kUTYe8w2DevFA2YVyAcRWEZ4lUdkY6R/JaT3ZcamSaXVixgVE2Buocd6JmTimp0bC9ZWBOVrYdQ15VWQkhfGAKwLaDHyJAxVW9ck/r1p3iirfohQzZthC96XAWBD3iBJptlbJdQKyID4EzA4DMVroNwVTAHHNLeg6Np2AWL4sg5mD0U8J5ZIKSRHpgHAm6QSgNgix5QwkBYN7jInwUf4zY4w3OF6XnFI88AuHRLAV0BJ0C8M6kShuRco06iWOFD2+WHQ4lGqWTEhKnYC6KIJKJi/AZaFKzhJ8x0yjYoVxjWztiCxtAxZEHRF4KJvLBNBtPFDvltpNzE8ibNt7ixo/xhbCJlGoXbWqPKUnpkME+yKmTN5nxm5dTq0avxZH6hisGqjKSVXPq+yv5Mhzxl31qKoJrvvcAynzlI/IujlU0s6nlk+tgsjcMKOy7j61/uvUym1RrktE5p1/YouSCQfP6FGZPgZsRMB4MY7oiTkgQphIME+EgyUBgyFb95OXInqjbXxyUpRUkVOeCBNWo2XG57LzxaNoBlgRgxESYRYF6rIpKOeIlH6/JWcMolGVMmiVS+YwPbvkAYioUfwOa12AzkCSN0M7yQCX1rOLD8ScpE0BBEDkWInkXmLvSZFwAPLsG6u0/288R19KOGbU8gAAAABJRU5ErkJggg==" alt="restaurents"></a></li>
										<li><span>$0.00</span></li>
									</ul>
								</div><!-- ../grid-box-description-->
								<div class="lp-grid-box-bottom">
									<div class="pull-left">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
										<span class="rating-ratio">4.0</span>
									</div>
									<div class="pull-right">
										<a href="#" class="lp-add-to-fav simptip-position-top simptip-movable" data-tooltip="Add to favorites">
										<i></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div><!-- ../grid-box-bottom-->
							</div><!-- ../grid-box -->
						</div>
						<div class="col-md-3 col-sm-6 lp-grid-box-contianer" data-title="3 Bed Detached House" data-reviews="5" data-number="+001-587-4567-89" data-email="russel@example.com" data-website="www.example.com" data-price="$50,000" data-pricetext="Text about your price" data-description="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi archeum" data-userimage="images/user-thumb-94x94.png" data-username="Jhon Russel" data-userlisting="14" data-fb="www.facebook.com" data-gplus="www.plus.google.com" data-linkedin="www.linkedin.com" data-instagram="www.instagram.com" data-twitter="www.twitter.com" data-lattitue="51.516576" data-longitute="-0.137508">
							<div class="lp-grid-box lp-border lp-border-radius-8">
								<div class="lp-grid-box-thumb-container">
									<div class="lp-grid-box-thumb">
													<div class="lp-grid-box-expired">
														<ul class="lp-post-expired list-style-none">
															<li>
																<i class="fa fa-bolt"></i>
																<span>
																	Expired
																</span>
															</li>
														</ul>
													</div><!-- ../grid-box-expired-->
										<img src="images/grid/grid-2.png" alt="grid-2">
									</div><!-- ../grid-box-thumb -->
									<div class="lp-grid-box-quick">
										<ul class="lp-post-quick-links">
											<li>
												<a class="icon-quick-eye md-trigger" data-modal="modal-2"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div><!-- ../grid-box-quick-->
								</div>
								<div class="lp-grid-box-description ">
									<h4 class="lp-h4">
										<a href="post-detail.html">
											3 Bed Detached House
										</a>
									</h4>
									<p>
										<i class="fa fa-map-marker"></i>
										<span>Newcastle, Tyne and Wear</span>
									</p>
									<ul class="lp-grid-box-price">
										<li class="category-cion"><a href="listing.html">
											<!-- Home icon by Icons8 -->
											<img class="icon icons8-Home" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAACVElEQVRoQ+3YvXnbMBAG4O9Ku4kyAiaIvAG4QVJGKiJvYE+SbGClEFtlA2EDyxNghNhNVCIPIEKmGJIHKgDFAu5s0gTeOxz+CAl/5FbPcMAWBjPcolBfxGuq5ijVhx3iD3ZEmNs2jME+JSYdZKOfjwjzdgwWfbAYtRR3KYKXBCI3+okIK4swhqRjkFEVZq2W4j42JjqkiVBLsbedlhs9T4mJCulC+OhzmKLUpi1Tu4Vg+8m+EDoEOEQI5uqQUASH8RCfgebvfUH974y8I9wUe+drgsvkcZjhuZqa3QQgS70m4NvoEFnqBwK+V525V0ux5gD153KjV0R4cv8PPKqF+GExaiFW9m+jZOSsEwaDEbVh9o5pfCc5JBaCwySFxEb0YZo1E63YUyH6MEWp1W4h3O4gCiQ1oguDW/wK2TUHTb+y1J8J2Fazy08/q3BRuvS5H1KuPUKhvgrFfYuF2PkecNvxmQGSI06ZqdYUY2DPMAW3PvVCroW4BNMJuTZiKKYVMhXEEMw/kKkhQjFnkDrCfiDkHMDNJjGf+5W+bQI4QZqXBVOGVJvUs8sMB2kgXgB8mjjE9bF+M0NNhLmBpAN+TxlibvCRDrCL5AlD8nRtgxeLsNuBIbvOmDXAfaveL5uAOoaq7cDcI4YeaLjGYz5vBthjDLBvXUcuyUjXxQEHGTIz9vUrQ5qRHprFoe9zQz56RkKHSoZ07DhyRnKNVBHINZJrhFuaLxwqeWjloZWHVn8Eco3kGsk1kmukMwKjHnUnebAKLI/RX2sLVu/BavQeBjbYBvkLODEBNn2o34UAAAAASUVORK5CYII=" alt="realestate">
										</a></li>
										<li><span>$50,000</span></li>
									</ul>
								</div><!-- ../grid-box-description-->
								<div class="lp-grid-box-bottom">
									<div class="pull-left">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
										<i class="fa fa-star-o"></i>
										<span class="rating-ratio">3.0</span>
									</div>
									<div class="pull-right">
										<span class=" simptip-position-top simptip-movable" data-tooltip="Marked as hot">
										<i class="fa fa-fire hot-post" title=""></i>
										</span>
										<a href="#" class="lp-add-to-fav simptip-position-top simptip-movable" data-tooltip="Add to favorites">
										<i></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div><!-- ../grid-box-bottom-->
							</div><!-- ../grid-box -->
						</div>
						<div class="col-md-3 col-sm-6 lp-grid-box-contianer" data-title="3 Bed Detached House" data-reviews="5" data-number="+001-587-4567-89" data-email="russel@example.com" data-website="www.example.com" data-price="$50,000" data-pricetext="Text about your price" data-description="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi archeum" data-userimage="images/user-thumb-94x94.png" data-username="Jhon Russel" data-userlisting="14" data-fb="www.facebook.com" data-gplus="www.plus.google.com" data-linkedin="www.linkedin.com" data-instagram="www.instagram.com" data-twitter="www.twitter.com" data-lattitue="51.516576" data-longitute="-0.137508">
							<div class="lp-grid-box lp-border lp-border-radius-8">
								<div class="lp-grid-box-thumb-container">
													<div class="lp-grid-box-expired">
														<ul class="lp-post-expired list-style-none">
															<li>
																<i class="fa fa-bolt"></i>
																<span>
																	Expired
																</span>
															</li>
														</ul>
													</div><!-- ../grid-box-expired-->
									<div class="lp-grid-box-thumb">
										<img src="images/grid/grid-3.png" alt="grid-3">
									</div><!-- ../grid-box-thumb -->
									<div class="lp-grid-box-quick">
										<ul class="lp-post-quick-links">
											<li>
												<a class="icon-quick-eye md-trigger" data-modal="modal-2"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div><!-- ../grid-box-quick-->
								</div>
								<div class="lp-grid-box-description ">
									<h4 class="lp-h4">
										<a href="post-detail.html">
											Photography
										</a>
									</h4>
									<p>
										<i class="fa fa-map-marker"></i>
										<span>Brighton, The City of Brighton</span>
									</p>
									<ul class="lp-grid-box-price">
										<li class="category-cion"><a href="listing.html">
											<!-- Camera icon by Icons8 -->
<img class="icon icons8-Camera" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEXUlEQVRoQ+1ZTVrbSBB9xWrMJswJQs8FhpwgrRPELCMvQk4QcwIyJ4g5AWRhZYlyAjcnIFxgmpxgzCbJipqv2mohbP20bIn444MlVv+8rupXr14TnsgfPREceAaybZHsJSL6wu7hFz7gDkMiHLQBzYxv2EGKP3BqDtU8dGznQByIH5i1BbC8YQdoF1EomO6BJHZCwAeAb5loaN4qE3qq8p3+YjUxpwC9YODUxGocMr4UiE7sjABdNQEDqYnV4fLv+ovdJ4aV/zPjlRmpbyGbWJlnag+IcOXmISjzVt00zVMKJEosNw2cxWplrJ7aj0Q4YeCzidVR0xx1v+vEnhPwjhn/mJH62DTX6mYS+46AcxlYttkQkAwcmlilTYs3ABkScFF6d0rIIAeip/YAhAsC9rPB17NYrTBOlFjJ+dc1mygdtw6oKLGSmn+XjWXGHIT3/sAcEAcCjmn2mPEVhPNNT3SdjYeMETLAHcZEeOPuUBZ9cnT5E1cSidB8DFmw72/01B4R4cxFZheK/AUFcDmLVSVTbbIxYTPc4Q0IQzD2fI1xtYIwByPFDr6GsFNxH3pqU4mMBIB8zhcvqAsf48wNkjxsWQv8Ytk8J3VUXtwYAwaM41DaXtQczORAJCL/ubsxwJ++iurEWn/pGbgxsVJtI6IT+4mArJjxLYOExVIwbvxGM4IRchkSeChFMMv7iYnVcciankUlIq5mFKk2Sv6d+0nB/H02+sszWePc2Z0T9tOuujNNsItJk9TIpM2YiMdZVTcY4LBpXC0QF7I7drWEd+ioTWrdqwIHQoemSZ6Orqqz8WBMrKK606sF0njsFR/oos4a0H7TaVatI9Ghn3wTorc6B+IvXpZOrSOxDEruTx6ZGt3WPZBMaHZZiwrazVSlWKdA7lUv3/IGKbUSlWKKVajgboEkdkzApy5U7woYr4KBYxOryfLvnQIpK6rrEkYJEK+CS5VHp0D01F6J7NikmapksKzJkuptRupV3xFZKapdRUTmKSvafv5OI1K3UBeAHhOIa4D6TC0AVY2ey4ZSrdX2FJ/OZX8q9OsLou/W1tVYZQURP2Bdm/EYBTFjFmdK9CFR6rrXTllLgCxEHq5cVICorXwvE40FQ6TS7OsciAOTyfhNUyxrshYp1WCb9gJkKcXWikzRmgoxRHoDsmiKIP253Jc5djAJeSIoPEWIZ7UnIHiAYRNx9AYkb1nzbtEZ2hKdlICUge9F84GAlwwMnQGxACCmW7AL3zuQAgGI9K6zWIv3/JIZ4zZEUQSykBeEqI3J0Kb6O4OOxfJxJy+n7v3cawBzeaYAIW1t0GW+lsiX3GmsevNos+HH/tY7Ns5pfOBYMN6bkXI20Lb/ee/XmR0D2l+48YnN3yIkMgRMZrG63EYwUWJfMyCttaTpvRtfYBmxLc9zh3EbUTzYk7Nhjx68j+RgFi+ywuOCtvSBZQvwXbO490s2bOevur8L6DOQ33XyVes+R+Q5Ij2dwP9TYAKAKNjkVAAAAABJRU5ErkJggg==" alt="camera">
										</a></li>
										<li class="category-cion"><a href="listing.html">
											<!-- Camera icon by Icons8 -->
<img class="icon icons8-Camera" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAEXUlEQVRoQ+1ZTVrbSBB9xWrMJswJQs8FhpwgrRPELCMvQk4QcwIyJ4g5AWRhZYlyAjcnIFxgmpxgzCbJipqv2mohbP20bIn444MlVv+8rupXr14TnsgfPREceAaybZHsJSL6wu7hFz7gDkMiHLQBzYxv2EGKP3BqDtU8dGznQByIH5i1BbC8YQdoF1EomO6BJHZCwAeAb5loaN4qE3qq8p3+YjUxpwC9YODUxGocMr4UiE7sjABdNQEDqYnV4fLv+ovdJ4aV/zPjlRmpbyGbWJlnag+IcOXmISjzVt00zVMKJEosNw2cxWplrJ7aj0Q4YeCzidVR0xx1v+vEnhPwjhn/mJH62DTX6mYS+46AcxlYttkQkAwcmlilTYs3ABkScFF6d0rIIAeip/YAhAsC9rPB17NYrTBOlFjJ+dc1mygdtw6oKLGSmn+XjWXGHIT3/sAcEAcCjmn2mPEVhPNNT3SdjYeMETLAHcZEeOPuUBZ9cnT5E1cSidB8DFmw72/01B4R4cxFZheK/AUFcDmLVSVTbbIxYTPc4Q0IQzD2fI1xtYIwByPFDr6GsFNxH3pqU4mMBIB8zhcvqAsf48wNkjxsWQv8Ytk8J3VUXtwYAwaM41DaXtQczORAJCL/ubsxwJ++iurEWn/pGbgxsVJtI6IT+4mArJjxLYOExVIwbvxGM4IRchkSeChFMMv7iYnVcciankUlIq5mFKk2Sv6d+0nB/H02+sszWePc2Z0T9tOuujNNsItJk9TIpM2YiMdZVTcY4LBpXC0QF7I7drWEd+ioTWrdqwIHQoemSZ6Orqqz8WBMrKK606sF0njsFR/oos4a0H7TaVatI9Ghn3wTorc6B+IvXpZOrSOxDEruTx6ZGt3WPZBMaHZZiwrazVSlWKdA7lUv3/IGKbUSlWKKVajgboEkdkzApy5U7woYr4KBYxOryfLvnQIpK6rrEkYJEK+CS5VHp0D01F6J7NikmapksKzJkuptRupV3xFZKapdRUTmKSvafv5OI1K3UBeAHhOIa4D6TC0AVY2ey4ZSrdX2FJ/OZX8q9OsLou/W1tVYZQURP2Bdm/EYBTFjFmdK9CFR6rrXTllLgCxEHq5cVICorXwvE40FQ6TS7OsciAOTyfhNUyxrshYp1WCb9gJkKcXWikzRmgoxRHoDsmiKIP253Jc5djAJeSIoPEWIZ7UnIHiAYRNx9AYkb1nzbtEZ2hKdlICUge9F84GAlwwMnQGxACCmW7AL3zuQAgGI9K6zWIv3/JIZ4zZEUQSykBeEqI3J0Kb6O4OOxfJxJy+n7v3cawBzeaYAIW1t0GW+lsiX3GmsevNos+HH/tY7Ns5pfOBYMN6bkXI20Lb/ee/XmR0D2l+48YnN3yIkMgRMZrG63EYwUWJfMyCttaTpvRtfYBmxLc9zh3EbUTzYk7Nhjx68j+RgFi+ywuOCtvSBZQvwXbO490s2bOevur8L6DOQ33XyVes+R+Q5Ij2dwP9TYAKAKNjkVAAAAABJRU5ErkJggg==" alt="camera">
										</a></li>
										<li><span>$20/h</span></li>
									</ul>
								</div><!-- ../grid-box-description-->
								<div class="lp-grid-box-bottom">
									<div class="pull-left">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-o"></i>
										<i class="fa fa-star-o"></i>
										<span class="rating-ratio">3.0</span>
									</div>
									<div class="pull-right">
										<span class=" simptip-position-top simptip-movable" data-tooltip="Marked as hot">
										<i class="fa fa-fire hot-post" title=""></i>
										</span>
										<a href="#" class="lp-add-to-fav simptip-position-top simptip-movable" data-tooltip="Add to favorites">
										<i></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div><!-- ../grid-box-bottom-->
							</div><!-- ../grid-box -->
						</div>
						<div class="col-md-3 col-sm-6 lp-grid-box-contianer" data-title="Hotel Rammizine" data-reviews="5" data-number="+041-923-4367-89" data-email="jhonruss@example.com" data-website="www.example.com" data-price="$1500" data-pricetext="Text about your price" data-description="Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi archeum" data-userimage="images/user-thumb-94x94.png" data-username="Jhon Russel" data-userlisting="14" data-fb="www.facebook.com" data-gplus="www.plus.google.com" data-linkedin="www.linkedin.com" data-instagram="www.instagram.com" data-twitter="www.twitter.com" data-lattitue="51.512306" data-longitute="-0.119221">
							<div class="lp-grid-box lp-border lp-border-radius-8">
								<div class="lp-grid-box-thumb-container">
													<div class="lp-grid-box-expired">
														<ul class="lp-post-expired list-style-none">
															<li>
																<i class="fa fa-bolt"></i>
																<span>
																	Expired
																</span>
															</li>
														</ul>
													</div><!-- ../grid-box-expired-->
									<div class="lp-grid-box-thumb">
										<img src="images/grid/grid-4.png" alt="grid-4">
									</div><!-- ../grid-box-thumb -->
									<div class="lp-grid-box-quick">
										<ul class="lp-post-quick-links">
											<li>
												<a class="icon-quick-eye md-trigger" data-modal="modal-2"><i class="fa fa-eye"></i></a>
											</li>
										</ul>
									</div><!-- ../grid-box-quick-->
								</div>
								<div class="lp-grid-box-description ">
									<h4 class="lp-h4">
										<a href="post-detail.html">
											Hotel Rammizine
										</a>
									</h4>
									<p>
										<i class="fa fa-map-marker"></i>
										<span>Brighton, The City of Brighton</span>
									</p>
									<ul class="lp-grid-box-price">
										<li class="category-cion"><a href="listing.html">
											<!-- 5 Star Hotel icon by Icons8 -->
<img class="icon icons8-5-Star-Hotel" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAACWUlEQVRoQ+1ZvXnbMBB95zKN5REwQZQJAk0QuwxZRJnAHsEj2BNYKciUsScQNrAzAUZI0qQ0/IEy80E0IQIgKOhTwE68H9w7HN7hKMLAw79LrlXEZyb6VFPL25hoEEgt1w2Qgi16gSSW7wTCKznHCT5BYU7AuVZWwD0IT3jGQ2OcUC5K9tRNqnVHeC1XBHwxDRTwTRRsqd+lljsD0YqLWmrk71+Nfq4LNjcdpJabsew8I7ySvwjqz6a06FSU7Mw0Ti13AsJ/yBn+4kqU7LoppUpe4x1uxAX73fxOLHcqreawA5cAzokwG2K2fciVgk7gPYBbp8POK7kkwt0+ggtdQyl8FSVbWUtL7wQRHl/p9hYKqz70oQGMsWuqhLCkTaVAKXwwY9s67C2lKr19Bbsas/BUtryWNxqM2Qr0WttANEsRZl20UwUV4retGn1mTBbdArKopdLO1wUbvLqEBBHLpi9OJyC8ko9E2GqGbVD66iIKdtHpL5PqBwNpDW0Z7e7gvvTNdZ12xFZyh/T+/wRyDKWlp8OPfUCUwoMoWTOztM+illPrv2FXp9KKRZux/ASzVqwAYvkJBpL7iGULYvWd3EdsmTyE906sta8rh2+fCimtqfuCr//cR2K1gCh+ch85psPeOwLneaTzTSBGQnIf+ffxIc8j4UwcTL/hS05jGQwkzyN5HtlkwIeWvej3EOYOG0AvIGPmBZcMj/HvCmT0vDAAZLR/JyC+JOpT276+R5WW72IZiGPGghuio3/z26/XtT+G/+M+I74ZSqW/63OQlQZTBWtbt/t3xgvz/SNvFqVEmwAAAABJRU5ErkJggg==" alt="hotels">
										</a></li>
										<li><span>Price on call</span></li>
									</ul>
								</div><!-- ../grid-box-description-->
								<div class="lp-grid-box-bottom">
									<div class="pull-left">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<span class="rating-ratio">5.0</span>
									</div>
									<div class="pull-right">
										<a href="#" class="lp-add-to-fav simptip-position-top simptip-movable" data-tooltip="Add to favorites">
										<i></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div><!-- ../grid-box-bottom-->
							</div><!-- ../grid-box -->
						</div>
							</div>		
						</div>
					</div>
					<div class="tab-pane fade" id="updateprofile">
						<div class="updateprofile-tab">
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<div class="tab-header">
										<h3>Update Profile</h3>
										<p>Update your profile settings</p>
									</div>
									<form class="form-horizontal">
										<div class="page-innner-container padding-40 lp-border lp-border-radius-8">
											<div class="user-avatar-upload lp-border-bottom padding-bottom-45">
												<div class="user-avatar-preview">
													<img src="images/user-thumb-94x94.png" alt="user-thumb-94x94" />
												</div>
												<div class="user-avatar-description">
													<p class="paragraph-form">
												Update your photo manually,If the photo is not set the default Gravatar will be the same as your login 
email/user account.<br>
Max Upload Size: 1MB, Dimensions: 190x190 , Extensions: JPEG,PNG
													</p>
													<div class="upload-photo margin-top-25">
														<span class="file-input file-upload-btn btn-first-hover btn-file">
															Upload Photo&hellip; <input type="file" accept="image/*" />
														</span>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<label for="Fname">First Name*</label>
													<input type="text" class="form-control" name="Fname" id="Fname" />
												</div>
												<div class="col-sm-6">
													<label for="Lname">Last Name*</label>
													<input type="text" class="form-control" name="Lname" id="Lname" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<label for="email">Email*</label>
													<input type="email" class="form-control" name="email" id="email" placeholder="eg. example@gmal.com" />
												</div>
												<div class="col-sm-6">
													<label for="phone">Phone*</label>
													<input type="text" class="form-control" name="phone" id="phone" placeholder="+00-12345-7890" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-12">
													<label for="about">About</label>
													<textarea  class="form-control" name="about" id="about" rows="8" placeholder="Write about youself"></textarea>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<label for="facebook">Facebook</label>
													<input type="text" class="form-control" name="facebook" id="facebook" placeholder="enter facebook profile url" />
												</div>
												<div class="col-sm-6">
													<label for="twitter">Twitter</label>
													<input type="text" class="form-control" name="twitter" id="twitter" placeholder="enter twitter profile url" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<label for="linkedin">Linkedin</label>
													<input type="text" class="form-control" name="linkedin" id="linkedin" placeholder="enter linkedin profile url" />
												</div>
												<div class="col-sm-6">
													<label for="google">Google</label>
													<input type="text" class="form-control" name="google" id="google" placeholder="enter google profile url" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<label for="instagram">Instagram</label>
													<input type="text" class="form-control" name="instagram" id="instagram" placeholder="enter instagram profile url" />
												</div>
												<div class="col-sm-6">
													<label for="pinterest">Pinterest</label>
													<input type="text" class="form-control" name="pinterest" id="pinterest" placeholder="enter pinterest profile url" />
												</div>
											</div>
										</div>
										
										<div class="tab-header margin-top-45">
											<h3>Update Password</h3>
											<p>Change and update your login password</p>
										</div>
										<div class="page-innner-container padding-40 lp-border lp-border-radius-8 margin-bottom-30">
											<div class="form-group">
												<div class="col-sm-6">
													<label for="npassword">New Password</label>
													<input type="password" class="form-control" name="npassword" id="npassword" placeholder="write new password" />
												</div>
												<div class="col-sm-6">
													<label for="rnpassword">Repeat Password</label>
													<input type="password" class="form-control" name="rnpassword" id="rnpassword" placeholder="write again your new password" />
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-12">
													<p class="paragraph-form">Enter same password in both fields. Use an uppercase letter and a number for stronger password.</p>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-12">
													<input type="submit" value="Update profile" class="lp-secondary-big-btn btn-first-hover" /> 
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
	</section>
	<!--==================================Section Close=================================-->

<jsp:include page="footer.jsp"></jsp:include>