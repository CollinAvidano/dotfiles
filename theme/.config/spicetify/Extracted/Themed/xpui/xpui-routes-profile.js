"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[499],{22578:(e,t,a)=>{a.d(t,{$:()=>g});var r=a(20657),i=a(67294),o=a.n(i),n=a(64593),l=a(8341),s=a(83693),u=a(76303),d=a(47886),m=a(24183);function c(e){return e.includes("Spotify")?e:`Spotify – ${e}`}const g=({children:e})=>{let t=c(e);(e=>{const{mainLandmarkRef:t}=(0,m.Oh)(),a=(0,d.k6)(),r=(0,i.useRef)(a.length<2);r.current=a.length<2,(0,i.useEffect)((()=>{const a=t.current;a&&!r.current&&e&&(a.setAttribute("aria-label",e),a.focus())}),[e,t])})(e);const a=(0,l.Y)(u.o9)===s.PO.PLAYING,g=(0,l.Y)((e=>null==e?void 0:e.item));return g&&a&&((0,s.G_)(g)?t=[g.name,g.artists.map((e=>e.name)).join(r.ag.getSeparator())].join(" · "):(0,s.iw)(g)?t=[g.name,g.show.name].join(" · "):(0,s.k6)(g)&&(t=c(r.ag.get("ad-formats.advertisement")))),o().createElement(n.q,{defaultTitle:"Spotify",defer:!1},o().createElement("title",null,t))}},70369:(e,t,a)=>{a.d(t,{$:()=>r.$});var r=a(22578)},37338:(e,t,a)=>{a.d(t,{T:()=>c});var r=a(67294),i=a.n(r),o=a(25678),n=a(53424),l=a(33732),s=a(22023),u=a(15212);const d="TQSVBI8VWiRisssL6c71",m="UTbTW30nlYwR3HjUFFJr",c=function({onClick:e,name:t,images:a,canEdit:r,placeholderType:c,shape:g=n.Kc.SQUARE,dragUri:p=""}){const[v,f]=(0,l.RH)(a),h=(0,o.VO)(v,f)===o.KO.loaded,b=(0,u.O1)([p],t);return i().createElement("div",{className:d,"data-testid":`${c}-image`,draggable:!!p,onDragStart:b},i().createElement(n.Oe,{loading:"eager",name:t,images:a,placeholderType:c,shape:g}),r&&i().createElement("div",{className:m},i().createElement(s.F,{overlay:h,onClick:e,rounded:g===n.Kc.CIRCLE})))}},11370:(e,t,a)=>{a.r(t),a.d(t,{UserPage:()=>ft,default:()=>ht});var r=a(67294),i=a.n(r),o=a(47886),n=a(69518),l=a.n(n),s=a(65858),u=a(94184),d=a.n(u);const m={xs:"(min-width: 0px)",xsOnly:"(min-width: 0px) and (max-width: 767px)",sm:"(min-width: 768px)",smOnly:"(min-width: 768px) and (max-width: 1023px)",md:"(min-width: 1024px)",mdOnly:"(min-width: 1024px) and (max-width: 1279px)",lg:"(min-width: 1280px)",lgOnly:"(min-width: 1280px) and (max-width: 1919px)",xl:"(min-width: 1920px)",buddyFeedMinWidth:"72px",buddyFeedEmptyMinWidth:"270px",buddyFeedInitialWidth:"270px",buddyFeedMaxWidth:"384px",container:"pJ4Vee6_epBZf9pA0iUF",background:"j1No2mYj_Ifjp8U399_t",overlay:"At5xCZ5CS_XB0_FS32Lb",loggedOut:"P_GhKPA0cMlyoUC1K6pT",historyButtons:"c6AvIYWfU0MRcwRp9Vx4",icon:"Vn1nKWtROyFx_cTopMmR",button:"Cuh9dGML2_s9p1SyovUE",forward:"_xEcXfnJQwWDi8TVDH2P",topbarContentWrapper:"_Oj2SV0aKOOvK3ClvSQt",topbarContent:"_9Wrtz_5kPuce_3pTgeO",UpgradeButton:"AE4jhdCe3PkjvDe5IVw3",indicators:"henVunC7c1p_OC8vQ4aO",contentArea:"XwSWTpF4wXwswFuzF3hD",back:"TePOviC1BpHhgbPDKdFZ",user:"s05Y0pqkHrrWGKeopEaa",section:"I8FC3O0rGKrBWyi1Skf6",subPage:"_ufhEUvRVFr7gMYzY21M",imageContainer:"AE3YvDMBoZwW9PntCp3W",topTrackSubPage:"_BFGSM8PwH7xWNb3muhy",header:"uUBEn0KVkGPXimX3PQVR",title:"_cZm18no15rdhqQ1sBv1",userVerifiedBadge:"_f0OGuqZaOzJlsuXbDjM"};var c=a(53424),g=a(59482),p=a(72907),v=a(20657),f=a(1663),h=a(14535),b=a(30947),y=a(56802),E=a(4236),k=a(48327),P=a(66227),O=a(56661),w=a(19480),I=a(74563);const _=e=>({owner:{display_name:e.owner_name},name:e.name,uri:e.uri,description:e.followers_count?v.ag.get("user.followers",e.followers_count):"",images:[{url:(0,I.p)({imageUriOrUrl:e.image_url}),width:300,height:300}]});function N(e){return{uri:e.uri,name:e.name,images:[{url:e.image_url}]}}function S(e=[]){return e.map(N)}function D(e){return{name:e.name,uri:e.uri,images:[{url:e.image_url}]}}var R=a(46309),x=a(76343),A=a(85105),U=a(79202),C=a(6060);const M={container:"UHqvMWsLfpKU7jJWvTBh",content:"_PHkvNfSbP_LDFKPssW2",header:"RmY6YIu_PxuEDx145JWl",closeBtn:"ApTBXqsNUtlMh3JkIw2y",image:"Re9QyB8mKIZsvDgDgn1I",imageLoadingContainer:"QDGbeoqj0nsFAPddf28I",textElement:"cLPUr0DLkbVLR2x7T72b",name:"_0KbSbPh0SymwzvO9_yj",textElementLabel:"IdA7yG7XEmEu5PEvQJdN",labelText:"zOsVHoNyZCdALetlh6SL",nameInput:"o2YpXb2UhiqUsfTkAKC_",save:"_XrKBbOfWo9Kuvt2JYGv",disclaimer:"hBXLjxkRVdgqtr04jbdP"};var T=a(16229),j=a(59713),W=a.n(j);function L(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function J(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?L(Object(a),!0).forEach((function(t){W()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):L(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function H(e){return{type:"setLoading",loading:e}}function B(e){return{type:"setMessage",message:e}}function F(e,t){switch(t.type){case"setName":return J(J({},e),{},{name:t.name});case"setMessage":return J(J({},e),{},{message:t.message,loading:!1});case"setLoading":return J(J({},e),{},{loading:t.loading,message:null});case"setImageData":return J(J({},e),{},{imageData:t.data,removeImage:!1});case"setImageToken":return J(J({},e),{},{imageToken:t.token,removeImage:!1});case"removeImage":return J(J({},e),{},{imageToken:void 0,imageData:void 0,image:void 0,removeImage:!0});default:return e}}var K=a(95184);const V={type:"error",get message(){return v.ag.get("user.edit-details.error.file-size-exceeded",4)}},G={type:"error",get message(){return v.ag.get("user.edit-details.error.too-small",300,300)}},Y={type:"error",get message(){return v.ag.get("user.edit-details.error.missing-name")}},X={type:"error",get message(){return v.ag.get("user.edit-details.error.failed-to-save")}},Q={type:"error",get message(){return v.ag.get("user.edit-details.error.file-upload-failed")}};var z=a(16516),Z=a(15429),$=a(62100);function q(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function ee(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?q(Object(a),!0).forEach((function(t){W()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):q(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const te={paths:""},ae={encode(e,t=$.Writer.create()){for(const a of e.paths)t.uint32(10).string(a);return t},decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ee({},te);for(i.paths=[];a.pos<r;){const e=a.uint32();if(e>>>3==1)i.paths.push(a.string());else a.skipType(7&e)}return i},fromJSON(e){const t=ee({},te);if(t.paths=[],void 0!==e.paths&&null!==e.paths)for(const a of e.paths)t.paths.push(String(a));return t},fromPartial(e){const t=ee({},te);if(t.paths=[],void 0!==e.paths&&null!==e.paths)for(const a of e.paths)t.paths.push(a);return t},toJSON(e){const t={};return e.paths?t.paths=e.paths.map((e=>e)):t.paths=[],t}};var re=a(43720),ie=a(48764).Buffer;function oe(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function ne(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?oe(Object(a),!0).forEach((function(t){W()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):oe(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const le={value:0},se={value:!1},ue={value:""};const de={encode:(e,t=$.Writer.create())=>(t.uint32(8).int32(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ne({},le);for(;a.pos<r;){const e=a.uint32();if(e>>>3==1)i.value=a.int32();else a.skipType(7&e)}return i},fromJSON(e){const t=ne({},le);return void 0!==e.value&&null!==e.value?t.value=Number(e.value):t.value=0,t},fromPartial(e){const t=ne({},le);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value=0,t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}},me={encode:(e,t=$.Writer.create())=>(t.uint32(8).bool(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ne({},se);for(;a.pos<r;){const e=a.uint32();if(e>>>3==1)i.value=a.bool();else a.skipType(7&e)}return i},fromJSON(e){const t=ne({},se);return void 0!==e.value&&null!==e.value?t.value=Boolean(e.value):t.value=!1,t},fromPartial(e){const t=ne({},se);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value=!1,t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}},ce={encode:(e,t=$.Writer.create())=>(t.uint32(10).string(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ne({},ue);for(;a.pos<r;){const e=a.uint32();if(e>>>3==1)i.value=a.string();else a.skipType(7&e)}return i},fromJSON(e){const t=ne({},ue);return void 0!==e.value&&null!==e.value?t.value=String(e.value):t.value="",t},fromPartial(e){const t=ne({},ue);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value="",t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}};$.util.Long!==re&&($.util.Long=re,(0,$.configure)());const ge=globalThis;ge.atob,ge.btoa;function pe(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function ve(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?pe(Object(a),!0).forEach((function(t){W()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):pe(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const fe={maxWidth:0,maxHeight:0,url:""},he={},be={},ye={encode:(e,t=$.Writer.create())=>(t.uint32(8).int32(e.maxWidth),t.uint32(16).int32(e.maxHeight),t.uint32(26).string(e.url),t),decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ve({},fe);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:i.maxWidth=a.int32();break;case 2:i.maxHeight=a.int32();break;case 3:i.url=a.string();break;default:a.skipType(7&e)}}return i},fromJSON(e){const t=ve({},fe);return void 0!==e.maxWidth&&null!==e.maxWidth?t.maxWidth=Number(e.maxWidth):t.maxWidth=0,void 0!==e.maxHeight&&null!==e.maxHeight?t.maxHeight=Number(e.maxHeight):t.maxHeight=0,void 0!==e.url&&null!==e.url?t.url=String(e.url):t.url="",t},fromPartial(e){const t=ve({},fe);return void 0!==e.maxWidth&&null!==e.maxWidth?t.maxWidth=e.maxWidth:t.maxWidth=0,void 0!==e.maxHeight&&null!==e.maxHeight?t.maxHeight=e.maxHeight:t.maxHeight=0,void 0!==e.url&&null!==e.url?t.url=e.url:t.url="",t},toJSON(e){const t={};return void 0!==e.maxWidth&&(t.maxWidth=e.maxWidth),void 0!==e.maxHeight&&(t.maxHeight=e.maxHeight),void 0!==e.url&&(t.url=e.url),t}},Ee={encode(e,t=$.Writer.create()){void 0!==e.username&&void 0!==e.username&&ce.encode({value:e.username},t.uint32(10).fork()).ldelim(),void 0!==e.name&&void 0!==e.name&&ce.encode({value:e.name},t.uint32(18).fork()).ldelim();for(const a of e.images)ye.encode(a,t.uint32(26).fork()).ldelim();return void 0!==e.verified&&void 0!==e.verified&&me.encode({value:e.verified},t.uint32(34).fork()).ldelim(),void 0!==e.editProfileDisabled&&void 0!==e.editProfileDisabled&&me.encode({value:e.editProfileDisabled},t.uint32(42).fork()).ldelim(),void 0!==e.reportAbuseDisabled&&void 0!==e.reportAbuseDisabled&&me.encode({value:e.reportAbuseDisabled},t.uint32(50).fork()).ldelim(),void 0!==e.abuseReportedName&&void 0!==e.abuseReportedName&&me.encode({value:e.abuseReportedName},t.uint32(58).fork()).ldelim(),void 0!==e.abuseReportedImage&&void 0!==e.abuseReportedImage&&me.encode({value:e.abuseReportedImage},t.uint32(66).fork()).ldelim(),void 0!==e.hasSpotifyName&&void 0!==e.hasSpotifyName&&me.encode({value:e.hasSpotifyName},t.uint32(74).fork()).ldelim(),void 0!==e.hasSpotifyImage&&void 0!==e.hasSpotifyImage&&me.encode({value:e.hasSpotifyImage},t.uint32(82).fork()).ldelim(),void 0!==e.color&&void 0!==e.color&&de.encode({value:e.color},t.uint32(90).fork()).ldelim(),t},decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ve({},he);for(i.images=[];a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:i.username=ce.decode(a,a.uint32()).value;break;case 2:i.name=ce.decode(a,a.uint32()).value;break;case 3:i.images.push(ye.decode(a,a.uint32()));break;case 4:i.verified=me.decode(a,a.uint32()).value;break;case 5:i.editProfileDisabled=me.decode(a,a.uint32()).value;break;case 6:i.reportAbuseDisabled=me.decode(a,a.uint32()).value;break;case 7:i.abuseReportedName=me.decode(a,a.uint32()).value;break;case 8:i.abuseReportedImage=me.decode(a,a.uint32()).value;break;case 9:i.hasSpotifyName=me.decode(a,a.uint32()).value;break;case 10:i.hasSpotifyImage=me.decode(a,a.uint32()).value;break;case 11:i.color=de.decode(a,a.uint32()).value;break;default:a.skipType(7&e)}}return i},fromJSON(e){const t=ve({},he);if(t.images=[],void 0!==e.username&&null!==e.username?t.username=String(e.username):t.username=void 0,void 0!==e.name&&null!==e.name?t.name=String(e.name):t.name=void 0,void 0!==e.images&&null!==e.images)for(const a of e.images)t.images.push(ye.fromJSON(a));return void 0!==e.verified&&null!==e.verified?t.verified=Boolean(e.verified):t.verified=void 0,void 0!==e.editProfileDisabled&&null!==e.editProfileDisabled?t.editProfileDisabled=Boolean(e.editProfileDisabled):t.editProfileDisabled=void 0,void 0!==e.reportAbuseDisabled&&null!==e.reportAbuseDisabled?t.reportAbuseDisabled=Boolean(e.reportAbuseDisabled):t.reportAbuseDisabled=void 0,void 0!==e.abuseReportedName&&null!==e.abuseReportedName?t.abuseReportedName=Boolean(e.abuseReportedName):t.abuseReportedName=void 0,void 0!==e.abuseReportedImage&&null!==e.abuseReportedImage?t.abuseReportedImage=Boolean(e.abuseReportedImage):t.abuseReportedImage=void 0,void 0!==e.hasSpotifyName&&null!==e.hasSpotifyName?t.hasSpotifyName=Boolean(e.hasSpotifyName):t.hasSpotifyName=void 0,void 0!==e.hasSpotifyImage&&null!==e.hasSpotifyImage?t.hasSpotifyImage=Boolean(e.hasSpotifyImage):t.hasSpotifyImage=void 0,void 0!==e.color&&null!==e.color?t.color=Number(e.color):t.color=void 0,t},fromPartial(e){const t=ve({},he);if(t.images=[],void 0!==e.username&&null!==e.username?t.username=e.username:t.username=void 0,void 0!==e.name&&null!==e.name?t.name=e.name:t.name=void 0,void 0!==e.images&&null!==e.images)for(const a of e.images)t.images.push(ye.fromPartial(a));return void 0!==e.verified&&null!==e.verified?t.verified=e.verified:t.verified=void 0,void 0!==e.editProfileDisabled&&null!==e.editProfileDisabled?t.editProfileDisabled=e.editProfileDisabled:t.editProfileDisabled=void 0,void 0!==e.reportAbuseDisabled&&null!==e.reportAbuseDisabled?t.reportAbuseDisabled=e.reportAbuseDisabled:t.reportAbuseDisabled=void 0,void 0!==e.abuseReportedName&&null!==e.abuseReportedName?t.abuseReportedName=e.abuseReportedName:t.abuseReportedName=void 0,void 0!==e.abuseReportedImage&&null!==e.abuseReportedImage?t.abuseReportedImage=e.abuseReportedImage:t.abuseReportedImage=void 0,void 0!==e.hasSpotifyName&&null!==e.hasSpotifyName?t.hasSpotifyName=e.hasSpotifyName:t.hasSpotifyName=void 0,void 0!==e.hasSpotifyImage&&null!==e.hasSpotifyImage?t.hasSpotifyImage=e.hasSpotifyImage:t.hasSpotifyImage=void 0,void 0!==e.color&&null!==e.color?t.color=e.color:t.color=void 0,t},toJSON(e){const t={};return void 0!==e.username&&(t.username=e.username),void 0!==e.name&&(t.name=e.name),e.images?t.images=e.images.map((e=>e?ye.toJSON(e):void 0)):t.images=[],void 0!==e.verified&&(t.verified=e.verified),void 0!==e.editProfileDisabled&&(t.editProfileDisabled=e.editProfileDisabled),void 0!==e.reportAbuseDisabled&&(t.reportAbuseDisabled=e.reportAbuseDisabled),void 0!==e.abuseReportedName&&(t.abuseReportedName=e.abuseReportedName),void 0!==e.abuseReportedImage&&(t.abuseReportedImage=e.abuseReportedImage),void 0!==e.hasSpotifyName&&(t.hasSpotifyName=e.hasSpotifyName),void 0!==e.hasSpotifyImage&&(t.hasSpotifyImage=e.hasSpotifyImage),void 0!==e.color&&(t.color=e.color),t}},ke={encode:(e,t=$.Writer.create())=>(void 0!==e.mask&&void 0!==e.mask&&ae.encode(e.mask,t.uint32(10).fork()).ldelim(),void 0!==e.userProfile&&void 0!==e.userProfile&&Ee.encode(e.userProfile,t.uint32(18).fork()).ldelim(),t),decode(e,t){const a=e instanceof Uint8Array?new $.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const i=ve({},be);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:i.mask=ae.decode(a,a.uint32());break;case 2:i.userProfile=Ee.decode(a,a.uint32());break;default:a.skipType(7&e)}}return i},fromJSON(e){const t=ve({},be);return void 0!==e.mask&&null!==e.mask?t.mask=ae.fromJSON(e.mask):t.mask=void 0,void 0!==e.userProfile&&null!==e.userProfile?t.userProfile=Ee.fromJSON(e.userProfile):t.userProfile=void 0,t},fromPartial(e){const t=ve({},be);return void 0!==e.mask&&null!==e.mask?t.mask=ae.fromPartial(e.mask):t.mask=void 0,void 0!==e.userProfile&&null!==e.userProfile?t.userProfile=Ee.fromPartial(e.userProfile):t.userProfile=void 0,t},toJSON(e){const t={};return void 0!==e.mask&&(t.mask=e.mask?ae.toJSON(e.mask):void 0),void 0!==e.userProfile&&(t.userProfile=e.userProfile?Ee.toJSON(e.userProfile):void 0),t}},Pe=`${z.XA}/identity`;async function Oe(e,t,{name:a,imageUploadToken:r}){void 0!==a&&await async function(e,t,a){const r=ke.encode(ke.fromPartial({mask:{paths:["name"]},userProfile:null!==a?{name:a}:{}}));await e.build().withHost(Pe).withMethod("POST").withPath(`/v3/user/username/${encodeURIComponent((0,Z.C)(t))}`).withEndpointIdentifier("/v3/user/username/{username}").withBody(r.finish()).withoutMarket().send()}(e,t,a),void 0!==r&&(null!==r?await async function(e,t,a){await e.build().withHost(Pe).withMethod("POST").withPath(`/v3/profile-image/${encodeURIComponent((0,Z.C)(t))}/${a}`).withEndpointIdentifier("/v3/profile-image/{username}/{uploadToken}").withoutMarket().send()}(e,t,r):await async function(e,t){await e.build().withHost(Pe).withMethod("DELETE").withPath(`/v3/profile-image/${encodeURIComponent((0,Z.C)(t))}`).withEndpointIdentifier("/v3/profile-image/{username}").withoutMarket().send()}(e,t))}var we=a(80624);var Ie=a(50119),_e=a(83298),Ne=a(25678),Se=a(33732);const De="YD45qnRQWUUXexSLSZ4Z",Re="_sc_Lu3NUEZGQ_zv2W9T",xe="eOyDSrlAr8ytC1_RPPAd",Ae="Z9VY9_mrsNxBmf0kNESJ",Ue="UYiBD_6QDIhH0eAoAXP2",Ce=function({onClickEdit:e,onClickRemove:t,name:a,images:r}){const[o,n]=(0,Se.RH)(r),l=(0,Ne.VO)(o,n)===Ne.KO.loaded;return i().createElement("div",{className:De},i().createElement(c.Oe,{loading:"eager",name:a,images:r,placeholderType:"user",shape:c.Kc.CIRCLE}),i().createElement("div",{className:d()(Re,{[Ae]:l})},i().createElement("button",{className:xe,"aria-haspopup":"true",onClick:e,type:"button"},i().createElement(x.Dy,null,v.ag.get("user.edit-details.choose-photo"))),i().createElement("div",{className:d()(Ue,"icon")},i().createElement(_e.f,{iconSize:48,"aria-hidden":!0})),i().createElement("button",{className:xe,onClick:t,type:"button"},i().createElement(x.Dy,null,v.ag.get("user.edit-details.remove-photo")))))},Me=i().memo((({uri:e,name:t,image:a,onClose:o,shouldOpenImagePicker:n})=>{const[l,s]=(0,Ie.Hs)(),[u,m]=function({name:e,image:t}){return(0,r.useReducer)(F,{loading:!1,message:null,name:e,image:t})}({name:t,image:a}),c=(0,r.useMemo)((()=>{const e=u.imageData||u.image;return e?[{url:e,width:300,height:300}]:[]}),[u.image,u.imageData]);(0,r.useEffect)((()=>{n&&s()}),[s,n]);const g=(0,r.useCallback)((e=>{e===Ie.Hy.FILE_TOO_BIG?m(B(V)):e===Ie.Hy.IMAGE_TOO_SMALL&&m(B(G))}),[m]),p=(0,r.useCallback)((()=>{m({type:"removeImage"})}),[m]),f=(0,r.useCallback)((async t=>{t.preventDefault();if(0!==u.name.trim().length){m(H(!0));try{const t=u.removeImage?null:u.imageToken;await async function(e,{name:t,imageUploadToken:a}){await Oe(we.b.getInstance(),e,{name:t,imageUploadToken:a})}(e,{name:u.name,imageUploadToken:t}),o({name:u.name,image:u.imageData||u.image})}catch(e){m(B(X))}}else m(B(Y))}),[m,o,u.image,u.imageData,u.imageToken,u.name,u.removeImage,e]);return i().createElement(A.Z,{isOpen:!0,contentLabel:v.ag.get("user.edit-details.title"),onRequestClose:()=>o()},i().createElement("div",{className:M.container},i().createElement("div",{className:M.header},i().createElement(x.Dy,{as:"h1",className:M.heading,variant:x.Dy.canon},v.ag.get("user.edit-details.title")),i().createElement("button",{className:M.closeBtn,onClick:()=>o(),"aria-label":v.ag.get("close")},i().createElement(U.j,{iconSize:16}))),u.message&&i().createElement(K.X,{isErrorMessage:"error"===u.message.type,message:u.message.message}),i().createElement("form",{className:M.content,onSubmit:f},i().createElement(Ie.uL,{isOpen:l,minImageWidth:300,minImageHeight:300,maxFileSizeMB:4,onChange:async function(e){if(!e)return;const{imageFile:t,imageDataUrl:a}=e;if(m(B(null)),m({type:"setImageData",data:a}),t)try{m(H(!0));const e=await async function(e){const t=await we.b.getInstance().build().withEndpointIdentifier("image-upload/v4/user-profile").withHost("https://image-upload.spotify.com/v4").withMethod("POST").withPath("/user-profile").withBody(e).withoutGlobalHeaders().withHeaders([{key:"Content-Type",value:"image/jpeg"}]).withoutMarket().send();if(!t.body)throw new Error("No upload token recieved");return t.body.uploadToken}(t);m({type:"setImageToken",token:e}),m(H(!1))}catch{m(B(Q))}},onError:g}),i().createElement("div",{className:M.image},i().createElement(Ce,{name:t,images:c,onClickEdit:s,onClickRemove:p}),u.loading&&i().createElement("div",{className:M.imageLoadingContainer},i().createElement(C.T,null))),i().createElement("div",{className:M.name},i().createElement("label",{htmlFor:"user-edit-name",className:M.textElementLabel},i().createElement(x.Dy,{as:"span",variant:x.$e.finaleBold,className:M.labelText},v.ag.get("user.edit-details.name-label"))),i().createElement("input",{"data-testid":"user-edit-name-input",id:"user-edit-name",type:"text",dir:"auto",className:d()(M.textElement,M.nameInput),onChange:e=>{m(function(e){return{type:"setName",name:e}}(e.target.value))},placeholder:v.ag.get("user.edit-details.name-placeholder"),maxLength:32,value:u.name})),i().createElement(T.Y,{version:"secondary",className:M.save,onClick:f,disabled:u.loading},v.ag.get("save")),i().createElement(x.Dy,{as:"p",variant:x.$e.finaleBold,className:M.disclaimer},v.ag.get("image-upload.legal-disclaimer")))))}));var Te=a(52983),je=a(29255),We=a(20246),Le=a(43480),Je=a(95661),He=a(37338);function Be(e,t){switch(t.type){case"OPEN_MODAL":return{isModalOpen:!0,shouldOpenImagePicker:!1};case"OPEN_MODAL_WITH_IMAGEPICKER":return{isModalOpen:!0,shouldOpenImagePicker:!0};case"CLOSE_MODAL":return{isModalOpen:!1,shouldOpenImagePicker:!1};default:return e}}var Fe=a(89477),Ke=a(43620),Ve=a(18261),Ge=a(13218),Ye=a(28248),Xe=a(42922),Qe=a(47991),ze=a(49961),Ze=a(80806),$e=a(84242),qe=a(42781);const et=i().memo((({tracks:e,hasHeaderRow:t=!1,nrTracksVisible:a,uri:o})=>{const n=(0,Z.C)(o),s=l().userToplistURI(n,"tracks").toURI(),u=(0,r.useMemo)((()=>a?e.slice(0,a):e),[a,e]),{usePlayContextItem:d}=(0,$e.n)({uri:s,pages:[{items:e.map((e=>({type:qe.p.TRACK,uri:e.uri,uid:null,provider:null})))}]},{featureIdentifier:"profile",referrerIdentifier:"user_profile"}),m=(0,r.useCallback)(((e,t)=>{var a;const r=(0,ze.X)(null==e||null===(a=e.album)||void 0===a?void 0:a.images,{desiredSize:40});return i().createElement(Ze.SS,{key:t+e.uri,index:t,uri:(0,Qe.$V)(e),duration_ms:e.duration_ms,name:e.name,artists:e.artists,album:e.album,isPlayable:!0,isExplicit:!!e.explicit,isMOGEFRestricted:!!e.mogef19,imgUrl:(null==r?void 0:r.url)||"",contextUri:s,usePlayContextItem:d})}),[s,d]),c=(0,r.useMemo)((()=>[Ye.QD.INDEX,Ye.QD.TITLE,Ye.QD.ALBUM,Ye.QD.DURATION]),[]),g=(0,r.useCallback)((e=>e.uri),[]);return i().createElement(Xe.ZP,{value:"user-top-tracks-tracklist"},i().createElement(Ye.Pv,{ariaLabel:v.ag.get("top_tracks_this_month"),renderRow:m,nrTracks:u.length,tracks:u,resolveUri:g,hasHeaderRow:t,columns:c}))}),((e,t)=>e.tracks===t.tracks)),tt=i().memo((({tracks:e,title:t,tagline:a,seeAllUri:r,className:o,uri:n})=>{if(!e||0===e.length)return null;const l=e.length>4;return i().createElement("section",{className:o},i().createElement(Ge.r,{title:t,tagline:a,seeAllUri:r,hasMoreElements:l}),i().createElement(et,{tracks:e,uri:n,nrTracksVisible:4}))}),((e,t)=>e.tracks===t.tracks));var at=a(98778),rt=a(18701),it=a(94321),ot=a(70369),nt=a(46146);const lt=({uri:e})=>{var t,a;const o=(0,s.v9)(je.Gf),n=(0,s.v9)(je.A$),u=(0,s.I0)(),[I,N]=(0,nt.H)(e),x=(0,r.useMemo)((()=>(0,ze.X)(n)),[n]),[{isModalOpen:A,shouldOpenImagePicker:U},C]=function(){const[e,t]=(0,r.useReducer)(Be,{isModalOpen:!1,shouldOpenImagePicker:!1});return[e,t]}(),M=(0,y.o)(),T=!(0,E.k)(),{data:j,loading:W}=(0,k.J)(P.n5.getProfile,[{uri:e,playlists:10,artists:10}]),L=null==j?void 0:j.body,J=null==L?void 0:L.public_playlists,H=null==L?void 0:L.is_verified,B=(null==L?void 0:L.is_current_user)||!1,F=null==L?void 0:L.recently_played_artists,K=B?(null==x?void 0:x.url)||"":(null==L?void 0:L.image_url)||"",V=(0,Z.C)(e),G=(0,s.v9)(it.C),Y=(B?o:null==L?void 0:L.name)||"",X=(0,Ke.Z)((null==L?void 0:L.image_url)||null),{data:Q,loading:z}=(0,k.J)(P.n5.getFollowing,[e]),$=null==Q||null===(t=Q.body)||void 0===t?void 0:t.profiles,{data:q,loading:ee}=(0,k.J)(P.n5.getFollowers,[e]),te=null==q||null===(a=q.body)||void 0===a?void 0:a.profiles,ae=(0,r.useMemo)((()=>(e=>e?P.n5.getUserTopArtists:()=>Promise.resolve({status:200,body:{items:[],offset:0,limit:0,total:0,href:"",next:null,previous:null}}))(B)),[B]),re=(0,r.useMemo)((()=>(e=>e?P.n5.getUserTopTracks:()=>Promise.resolve({status:200,body:{items:[],offset:0,limit:0,total:0,href:"",next:null,previous:null}}))(B&&!G)),[B,G]),{data:ie,loading:oe}=(0,k.J)(ae,[]),{data:ne,loading:le}=(0,k.J)(re,[]),se=null==ie?void 0:ie.body,ue=null==ne?void 0:ne.body,de=(0,r.useCallback)((()=>{M({targetUri:e,intent:I?"unfollow":"follow",type:"click"}),N(!I)}),[I,M,N,e]),me=(0,r.useCallback)((e=>{C({type:"CLOSE_MODAL"}),e&&(u((0,Te.dL)(e.name)),u((0,Te.GR)(e.image?[{url:e.image,height:null,width:null}]:[])))}),[u,C]),ce=(0,r.useCallback)((()=>C({type:"OPEN_MODAL"})),[C]),ge=(0,r.useCallback)((()=>{C({type:"OPEN_MODAL_WITH_IMAGEPICKER"})}),[C]),pe=(0,r.useMemo)((()=>S($)),[$]),ve=(0,r.useMemo)((()=>S(te)),[te]),fe=(0,r.useMemo)((()=>(J||[]).map(_)),[J]),he=(0,r.useMemo)((()=>(F||[]).map(D)),[F]),be=(0,r.useMemo)((()=>[{url:K}]),[K]);if(!L||W||z||ee||le||oe)return i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")});const ye={total:L.followers_count},Ee=d()("contentSpacing",m.section,m.shelf);return i().createElement("div",{className:m.user},i().createElement(ot.$,null,Y),i().createElement(c.gF,{backgroundColor:X},i().createElement(g.W,null,i().createElement(p.i,{text:Y})),i().createElement(Ve._,{menu:i().createElement(Le.I,{uri:L.uri})},i().createElement("div",{className:m.imageContainer},i().createElement(He.T,{canEdit:B,name:Y,images:be,onClick:ge,placeholderType:"user",shape:c.Kc.CIRCLE}))),i().createElement(c.sP,null,i().createElement(c.dy,{small:!0,uppercase:!0},H&&i().createElement("span",{className:m.userVerifiedBadge},i().createElement(rt.S,null)),v.ag.get("card.tag.profile")),i().createElement(Ve._,{menu:i().createElement(Le.I,{uri:L.uri})},i().createElement(c.xd,{canEdit:B,editTitle:v.ag.get("playlist.edit-details.title"),onClick:ce},Y)),i().createElement(c.QS,{totalFollowers:ye.total,totalFollowing:pe.length,publicPlaylists:L.total_public_playlists_count,userUri:e}))),i().createElement(b.o,{backgroundColor:X},i().createElement(b.F,null,!B&&i().createElement(at.r,null,i().createElement(h.e,{isFollowing:Boolean(I),onClick:de,disabled:T})),i().createElement(We.y,{menu:i().createElement(Le.I,{uri:L.uri,onEditProfileCallback:ce})},i().createElement(Je.z,{label:v.ag.get("more.label.context",Y)})))),i().createElement(w.P,{className:Ee,total:(null==se?void 0:se.total)||0,title:v.ag.get("top_artists_this_month"),tagline:v.ag.get("only_visible_to_you"),seeAllUri:l().profileURI(V,["top","artists"]).toURI()},null==se?void 0:se.items.map((e=>i().createElement(Fe.I,{key:e.uri,entity:e})))),i().createElement(tt,{className:Ee,title:v.ag.get("top_tracks_this_month"),tagline:v.ag.get("only_visible_to_you"),seeAllUri:l().profileURI(V,["top","tracks"]).toURI(),uri:e,tracks:null==ue?void 0:ue.items}),i().createElement(w.P,{className:Ee,total:L.total_public_playlists_count,title:v.ag.get("public_playlists"),seeAllUri:l().profileURI(V,["playlists"]).toURI()},fe.map((e=>i().createElement(R.Z,{key:e.uri,entity:e})))),he.length?i().createElement(w.P,{className:Ee,total:he.length,title:v.ag.get("recently_played_artists"),seeAllUri:l().profileURI(V,["recently-played-artists"]).toURI()},he.map((e=>i().createElement(Fe.I,{key:e.uri,entity:e})))):null,ve.length?i().createElement(w.P,{className:Ee,title:v.ag.get("followers"),total:ve.length,seeAllUri:l().profileURI(V,["followers"]).toURI()},ve.map((e=>{const t=(0,O.U)(e.uri);return i().createElement(t,{key:e.uri,entity:e})}))):null,pe.length?i().createElement(w.P,{className:Ee,title:v.ag.get("following"),total:pe.length,seeAllUri:l().profileURI(V,["following"]).toURI()},pe.map((e=>{const t=(0,O.U)(e.uri);return i().createElement(t,{key:e.uri,entity:e})}))):null,B&&A?i().createElement(Me,{uri:e,name:Y,image:K,onClose:me,shouldOpenImagePicker:U}):null)},st=e=>{var t;const{uri:a}=e,{data:o,loading:n}=(0,k.J)(P.n5.getFollowing,[a]),l=null==o||null===(t=o.body)||void 0===t?void 0:t.profiles,s=(0,r.useMemo)((()=>S(l)),[l]);return n?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):i().createElement(w.P,{className:d()("contentSpacing",m.subPage),title:v.ag.get("following"),total:s.length,showAll:!0},s.map((e=>{const t=(0,O.U)(e.uri);return i().createElement(t,{entity:e,key:e.uri})})))},ut=e=>{var t;const{uri:a}=e,{data:o,loading:n}=(0,k.J)(P.n5.getFollowers,[a]),l=null==o||null===(t=o.body)||void 0===t?void 0:t.profiles,s=(0,r.useMemo)((()=>S(l)),[l]);return n?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):i().createElement(w.P,{className:d()("contentSpacing",m.subPage),title:v.ag.get("followers"),total:s.length,showAll:!0},s.map((e=>{const t=(0,O.U)(e.uri);return i().createElement(t,{entity:e,key:e.uri})})))},dt=e=>{const{uri:t}=e,{data:a,loading:o}=(0,k.J)(P.n5.getPlaylists,[{uri:t}]),n=null==a?void 0:a.body,{public_playlists:l,total_public_playlists_count:s=0}=n||{},u=(0,r.useMemo)((()=>(l||[]).map(_)),[l]);return o?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):i().createElement(w.P,{className:d()("contentSpacing",m.subPage),total:s,title:v.ag.get("public_playlists"),showAll:!0},u.map((e=>i().createElement(R.Z,{key:e.uri,entity:e}))))},mt=e=>{var t;const{uri:a}=e,{data:o,loading:n}=(0,k.J)(P.n5.getRecentlyPlayedArtists,[{uri:a,limit:50}]),l=null==o||null===(t=o.body)||void 0===t?void 0:t.artists,s=(0,r.useMemo)((()=>(l||[]).map(D)),[l]);return n?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):i().createElement(w.P,{className:d()("contentSpacing",m.subPage),total:s.length,title:v.ag.get("recently_played_artists"),showAll:!0},s.map((e=>i().createElement(Fe.I,{key:e.uri,entity:e}))))},ct=({uri:e})=>{const{data:t,loading:a}=(0,k.J)(P.n5.getUserTopTracks,[{offset:0,limit:50}]),r=null==t?void 0:t.body;return a?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):r?i().createElement("div",{className:d()("contentSpacing",m.subPage,m.topTrackSubPage)},i().createElement("div",{className:m.header},i().createElement(x.Dy,{as:"h1",variant:x.Dy.canon,className:m.title},v.ag.get("top_tracks_this_month")),i().createElement(x.Dy,{as:"p",variant:x.Dy.mesto},v.ag.get("only_visible_to_you"))),i().createElement(et,{tracks:r.items,uri:e,hasHeaderRow:!0})):null},gt=({uri:e})=>{const{data:t,loading:a}=(0,k.J)(P.n5.getProfile,[{uri:e}]),r=null==t?void 0:t.body,o=(null==r?void 0:r.is_current_user)||!1;return r&&!a&&o?i().createElement(ct,{uri:e}):i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")})},pt=()=>{const{data:e,loading:t}=(0,k.J)(P.n5.getUserTopArtists),a=null==e?void 0:e.body;return t?i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")}):a?i().createElement(w.P,{className:d()("contentSpacing",m.subPage),total:a.items.length,title:v.ag.get("top_artists_this_month"),tagline:v.ag.get("only_visible_to_you"),showAll:!0},a.items.map((e=>i().createElement(Fe.I,{key:e.uri,entity:e})))):null},vt=({uri:e})=>{const{data:t,loading:a}=(0,k.J)(P.n5.getProfile,[{uri:e}]),r=null==t?void 0:t.body,o=(null==r?void 0:r.is_current_user)||!1;return r&&!a&&o?i().createElement(pt,null):i().createElement(f.h,{errorMessage:v.ag.get("error.not_found.title.page")})},ft=i().memo((()=>{const{userId:e}=(0,o.UO)(),t=decodeURIComponent(e),a=l().profileURI(t).toURI();return i().createElement("section",null,i().createElement(o.AW,{exact:!0,path:"/user/:userId/playlists"},i().createElement(dt,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId/top/tracks"},i().createElement(gt,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId/top/artists"},i().createElement(vt,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId/recently-played-artists"},i().createElement(mt,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId/following"},i().createElement(st,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId/followers"},i().createElement(ut,{uri:a})),i().createElement(o.AW,{exact:!0,path:"/user/:userId"},i().createElement(lt,{uri:a})))})),ht=ft},47991:(e,t,a)=>{a.d(t,{$V:()=>r});const r=e=>{var t;return(null==e||null===(t=e.linked_from)||void 0===t?void 0:t.uri)||e.uri}},14535:(e,t,a)=>{a.d(t,{e:()=>m});var r=a(67294),i=a.n(r),o=a(20657),n=a(94184),l=a.n(n);const s="kc0nmjJmNuPr8akFaK6s",u="f2DTOjNfjAyj7fze7fMJ",d="PYYLSf2sFSGNKDBbzayi",m=i().memo((({isFollowing:e,onClick:t,disabled:a=!1})=>{const r=e?o.ag.get("following"):o.ag.get("follow");return i().createElement("button",{type:"button",className:l()(s,{[u]:e,[d]:a}),onClick:t},r)}))},18701:(e,t,a)=>{a.d(t,{S:()=>o});var r=a(67294),i=a.n(r);const o=()=>i().createElement("svg",{width:"24",height:"24",viewBox:"0 0 24 24",fill:"none",xmlns:"http://www.w3.org/2000/svg"},i().createElement("path",{d:"M12 21.6596l-3.38079 1.8543-1.84158-3.3877-3.84662-.2679.28231-3.8456-3.09118-2.3049 2.31658-3.0825-1.3543-3.61028 3.61534-1.34071.81255-3.76935 3.76627.82672L12 0l2.7214 2.73168 3.7663-.82672.8125 3.76935 3.6154 1.34071-1.3543 3.61028 2.3166 3.0825-3.0912 2.3049.2823 3.8456-3.8466.2679-1.8416 3.3877L12 21.6596z",fill:"#2E77D0"}),i().createElement("path",{d:"M16.8637 7.41226l-6.6435 7.77824-2.80421-3.2842-.4935.5775 3.29771 3.8617 7.2135-8.44649-.57-.48675z",fill:"#fff"}))}}]);
//# sourceMappingURL=xpui-routes-profile.js.map