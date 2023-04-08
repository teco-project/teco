//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gme {
    /// ScanVoice请求参数结构体
    public struct ScanVoiceRequest: TCRequestModel {
        /// 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        public let bizId: UInt64

        /// 语音检测场景，参数值目前要求为 default。 预留场景设置： 谩骂、色情、广告、违禁等场景，<a href="#Label_Value">具体取值见上述 Label 说明。</a>
        public let scenes: [String]

        /// 是否为直播流。值为 false 时表示普通语音文件检测；为 true 时表示语音流检测。
        public let live: Bool

        /// 语音检测任务列表，列表最多支持100个检测任务。结构体中包含：
        /// <li>DataId：数据的唯一ID</li>
        /// <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        public let tasks: [Task]

        /// 异步检测结果回调地址，具体见上述<a href="#Callback_Declare">回调相关说明</a>。（说明：该字段为空时，必须通过接口(查询语音检测结果)获取检测结果）。
        public let callback: String?

        /// 语种，不传默认中文
        public let lang: String?

        public init(bizId: UInt64, scenes: [String], live: Bool, tasks: [Task], callback: String? = nil, lang: String? = nil) {
            self.bizId = bizId
            self.scenes = scenes
            self.live = live
            self.tasks = tasks
            self.callback = callback
            self.lang = lang
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case scenes = "Scenes"
            case live = "Live"
            case tasks = "Tasks"
            case callback = "Callback"
            case lang = "Lang"
        }
    }

    /// ScanVoice返回参数结构体
    public struct ScanVoiceResponse: TCResponseModel {
        /// 语音检测返回。Data 字段是 JSON 数组，每一个元素包含：<li>DataId： 请求中对应的 DataId。</li>
        /// <li>TaskID ：该检测任务的 ID，用于轮询语音检测结果。</li>
        public let data: [ScanVoiceResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 提交语音检测任务
    ///
    /// 本接口(ScanVoice)用于提交语音检测任务，检测任务列表最多支持100个。使用前请您登录[控制台 - 服务配置](https://console.cloud.tencent.com/gamegme/conf)开启语音内容安全服务。
    /// </br></br>
    ///
    /// <h4><b>功能试用说明：</b></h4>
    /// <li>打开前往<a href="https://console.cloud.tencent.com/gamegme/tryout">控制台 - 产品试用</a>免费试用语音内容安全服务。</li>
    /// </br>
    ///
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音流或语音文件进行检测，判断其中是否包含违规内容。</li>
    /// <li>支持设置回调地址 Callback 获取检测结果，同时支持通过接口(查询语音检测结果)主动轮询获取检测结果。</li>
    /// <li>支持场景输入，包括：谩骂、色情等场景</li>
    /// <li>支持批量提交检测任务。检测任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：100 M</li>
    /// <li>音频文件时长限制：30分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    /// <h4><b>语音流限制说明：</b></h4>
    /// <li>语音流格式支持的类型：.m3u8、.flv</li>
    /// <li>语音流支持的传输协议：RTMP、HTTP、HTTPS</li>
    /// <li>语音流时长限制：4小时</li>
    /// <li>支持音视频流分离并对音频流进行分析</li>
    /// </br>
    /// <h4 id="Label_Value"><b>Scenes 与 Label 参数说明：</b></h4>
    /// <p>提交语音检测任务时，需要指定 Scenes 场景参数，<font color="red">目前要求您设置 Scenes 参数值为：["default"]</font>；而在检测结果中，则包含请求时指定的场景，以及对应类型的检测结果。</p>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>场景</th>
    /// <th>描述</th>
    /// <th>Label</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>语音检测</td>
    /// <td>语音检测的检测类型</td>
    /// <td>
    /// <p>normal:正常文本</p>
    /// <p>porn:色情</p>
    /// <p>abuse:谩骂</p>
    /// <p>ad :广告</p>
    /// <p>illegal :违法</p>
    /// <p>moan :呻吟</p>
    /// <p>customized:自定义词库</p>
    /// </td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// </br>
    /// <h4 id="Callback_Declare"><b>回调相关说明：</b></h4>
    /// <li>如果在请求参数中指定了回调地址参数 Callback，即一个 HTTP(S) 协议接口的 URL，则需要支持 POST 方法，传输数据编码采用 UTF-8。</li>
    /// <li>在推送回调数据后，接收到的 HTTP 状态码为 200 时，表示推送成功。</li>
    /// <li>HTTP 请求参数（query）说明：</li>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>名称</th>
    /// <th>类型</th>
    /// <th>是否必需</th>
    /// <th>描述</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>Signatue</td>
    /// <td>string</td>
    /// <td>是</td>
    /// <td>签名，具体见<a href="#Callback_Signatue">签名生成说明</a></td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// <ul  id="Callback_Signatue">
    /// 	<li>签名生成说明：</li>
    /// 	<ul>
    /// 		<li>使用 HMAC-SH1 算法, 最终结果做 BASE64 编码;</li>
    /// 		<li>签名原文串为 POST+body 的整个json内容(长度以 Content-Length 为准);</li>
    /// 		<li>签名key为应用的 SecretKey，可以通过控制台查看。</li>
    /// 	</ul>
    /// </ul>
    ///
    /// <li>回调示例如下<font color="red">（详细字段说明见结构：
    /// <a href="https://cloud.tencent.com/document/api/607/35375#DescribeScanResult" target="_blank">DescribeScanResult</a>）</font>：</li>
    /// <pre><code>{
    /// 	"Code": 0,
    /// 	"DataId": "1400000000_test_data_id",
    /// 	"ScanFinishTime": 1566720906,
    /// 	"HitFlag": true,
    /// 	"Live": false,
    /// 	"Msg": "",
    /// 	"ScanPiece": [{
    /// 		"DumpUrl": "",
    /// 		"HitFlag": true,
    /// 		"MainType": "abuse",
    /// 		"RoomId": "123",
    /// 		"OpenId": "111",
    /// 		"Info":"",
    /// 		"Offset": 0,
    /// 		"Duration": 3400,
    /// 		"PieceStartTime":1574684231,
    /// 		"ScanDetail": [{
    /// 			"EndTime": 1110,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 1110
    /// 		}, {
    /// 			"EndTime": 1380,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 1560,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 2820,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 2490
    /// 		}]
    /// 	}],
    /// 	"ScanStartTime": 1566720905,
    /// 	"Scenes": [
    /// 		"default"
    /// 	],
    /// 	"Status": "Success",
    /// 	"TaskId": "6330xxxx-9xx7-11ed-98e3-52xxxxe4ac3b",
    /// 	"Url": "https://xxx/xxx.m4a"
    /// }
    /// </code></pre>
    @inlinable
    public func scanVoice(_ input: ScanVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVoiceResponse> {
        self.client.execute(action: "ScanVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交语音检测任务
    ///
    /// 本接口(ScanVoice)用于提交语音检测任务，检测任务列表最多支持100个。使用前请您登录[控制台 - 服务配置](https://console.cloud.tencent.com/gamegme/conf)开启语音内容安全服务。
    /// </br></br>
    ///
    /// <h4><b>功能试用说明：</b></h4>
    /// <li>打开前往<a href="https://console.cloud.tencent.com/gamegme/tryout">控制台 - 产品试用</a>免费试用语音内容安全服务。</li>
    /// </br>
    ///
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音流或语音文件进行检测，判断其中是否包含违规内容。</li>
    /// <li>支持设置回调地址 Callback 获取检测结果，同时支持通过接口(查询语音检测结果)主动轮询获取检测结果。</li>
    /// <li>支持场景输入，包括：谩骂、色情等场景</li>
    /// <li>支持批量提交检测任务。检测任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：100 M</li>
    /// <li>音频文件时长限制：30分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    /// <h4><b>语音流限制说明：</b></h4>
    /// <li>语音流格式支持的类型：.m3u8、.flv</li>
    /// <li>语音流支持的传输协议：RTMP、HTTP、HTTPS</li>
    /// <li>语音流时长限制：4小时</li>
    /// <li>支持音视频流分离并对音频流进行分析</li>
    /// </br>
    /// <h4 id="Label_Value"><b>Scenes 与 Label 参数说明：</b></h4>
    /// <p>提交语音检测任务时，需要指定 Scenes 场景参数，<font color="red">目前要求您设置 Scenes 参数值为：["default"]</font>；而在检测结果中，则包含请求时指定的场景，以及对应类型的检测结果。</p>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>场景</th>
    /// <th>描述</th>
    /// <th>Label</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>语音检测</td>
    /// <td>语音检测的检测类型</td>
    /// <td>
    /// <p>normal:正常文本</p>
    /// <p>porn:色情</p>
    /// <p>abuse:谩骂</p>
    /// <p>ad :广告</p>
    /// <p>illegal :违法</p>
    /// <p>moan :呻吟</p>
    /// <p>customized:自定义词库</p>
    /// </td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// </br>
    /// <h4 id="Callback_Declare"><b>回调相关说明：</b></h4>
    /// <li>如果在请求参数中指定了回调地址参数 Callback，即一个 HTTP(S) 协议接口的 URL，则需要支持 POST 方法，传输数据编码采用 UTF-8。</li>
    /// <li>在推送回调数据后，接收到的 HTTP 状态码为 200 时，表示推送成功。</li>
    /// <li>HTTP 请求参数（query）说明：</li>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>名称</th>
    /// <th>类型</th>
    /// <th>是否必需</th>
    /// <th>描述</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>Signatue</td>
    /// <td>string</td>
    /// <td>是</td>
    /// <td>签名，具体见<a href="#Callback_Signatue">签名生成说明</a></td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// <ul  id="Callback_Signatue">
    /// 	<li>签名生成说明：</li>
    /// 	<ul>
    /// 		<li>使用 HMAC-SH1 算法, 最终结果做 BASE64 编码;</li>
    /// 		<li>签名原文串为 POST+body 的整个json内容(长度以 Content-Length 为准);</li>
    /// 		<li>签名key为应用的 SecretKey，可以通过控制台查看。</li>
    /// 	</ul>
    /// </ul>
    ///
    /// <li>回调示例如下<font color="red">（详细字段说明见结构：
    /// <a href="https://cloud.tencent.com/document/api/607/35375#DescribeScanResult" target="_blank">DescribeScanResult</a>）</font>：</li>
    /// <pre><code>{
    /// 	"Code": 0,
    /// 	"DataId": "1400000000_test_data_id",
    /// 	"ScanFinishTime": 1566720906,
    /// 	"HitFlag": true,
    /// 	"Live": false,
    /// 	"Msg": "",
    /// 	"ScanPiece": [{
    /// 		"DumpUrl": "",
    /// 		"HitFlag": true,
    /// 		"MainType": "abuse",
    /// 		"RoomId": "123",
    /// 		"OpenId": "111",
    /// 		"Info":"",
    /// 		"Offset": 0,
    /// 		"Duration": 3400,
    /// 		"PieceStartTime":1574684231,
    /// 		"ScanDetail": [{
    /// 			"EndTime": 1110,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 1110
    /// 		}, {
    /// 			"EndTime": 1380,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 1560,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 2820,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 2490
    /// 		}]
    /// 	}],
    /// 	"ScanStartTime": 1566720905,
    /// 	"Scenes": [
    /// 		"default"
    /// 	],
    /// 	"Status": "Success",
    /// 	"TaskId": "6330xxxx-9xx7-11ed-98e3-52xxxxe4ac3b",
    /// 	"Url": "https://xxx/xxx.m4a"
    /// }
    /// </code></pre>
    @inlinable
    public func scanVoice(_ input: ScanVoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVoiceResponse {
        try await self.client.execute(action: "ScanVoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交语音检测任务
    ///
    /// 本接口(ScanVoice)用于提交语音检测任务，检测任务列表最多支持100个。使用前请您登录[控制台 - 服务配置](https://console.cloud.tencent.com/gamegme/conf)开启语音内容安全服务。
    /// </br></br>
    ///
    /// <h4><b>功能试用说明：</b></h4>
    /// <li>打开前往<a href="https://console.cloud.tencent.com/gamegme/tryout">控制台 - 产品试用</a>免费试用语音内容安全服务。</li>
    /// </br>
    ///
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音流或语音文件进行检测，判断其中是否包含违规内容。</li>
    /// <li>支持设置回调地址 Callback 获取检测结果，同时支持通过接口(查询语音检测结果)主动轮询获取检测结果。</li>
    /// <li>支持场景输入，包括：谩骂、色情等场景</li>
    /// <li>支持批量提交检测任务。检测任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：100 M</li>
    /// <li>音频文件时长限制：30分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    /// <h4><b>语音流限制说明：</b></h4>
    /// <li>语音流格式支持的类型：.m3u8、.flv</li>
    /// <li>语音流支持的传输协议：RTMP、HTTP、HTTPS</li>
    /// <li>语音流时长限制：4小时</li>
    /// <li>支持音视频流分离并对音频流进行分析</li>
    /// </br>
    /// <h4 id="Label_Value"><b>Scenes 与 Label 参数说明：</b></h4>
    /// <p>提交语音检测任务时，需要指定 Scenes 场景参数，<font color="red">目前要求您设置 Scenes 参数值为：["default"]</font>；而在检测结果中，则包含请求时指定的场景，以及对应类型的检测结果。</p>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>场景</th>
    /// <th>描述</th>
    /// <th>Label</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>语音检测</td>
    /// <td>语音检测的检测类型</td>
    /// <td>
    /// <p>normal:正常文本</p>
    /// <p>porn:色情</p>
    /// <p>abuse:谩骂</p>
    /// <p>ad :广告</p>
    /// <p>illegal :违法</p>
    /// <p>moan :呻吟</p>
    /// <p>customized:自定义词库</p>
    /// </td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// </br>
    /// <h4 id="Callback_Declare"><b>回调相关说明：</b></h4>
    /// <li>如果在请求参数中指定了回调地址参数 Callback，即一个 HTTP(S) 协议接口的 URL，则需要支持 POST 方法，传输数据编码采用 UTF-8。</li>
    /// <li>在推送回调数据后，接收到的 HTTP 状态码为 200 时，表示推送成功。</li>
    /// <li>HTTP 请求参数（query）说明：</li>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>名称</th>
    /// <th>类型</th>
    /// <th>是否必需</th>
    /// <th>描述</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>Signatue</td>
    /// <td>string</td>
    /// <td>是</td>
    /// <td>签名，具体见<a href="#Callback_Signatue">签名生成说明</a></td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// <ul  id="Callback_Signatue">
    /// 	<li>签名生成说明：</li>
    /// 	<ul>
    /// 		<li>使用 HMAC-SH1 算法, 最终结果做 BASE64 编码;</li>
    /// 		<li>签名原文串为 POST+body 的整个json内容(长度以 Content-Length 为准);</li>
    /// 		<li>签名key为应用的 SecretKey，可以通过控制台查看。</li>
    /// 	</ul>
    /// </ul>
    ///
    /// <li>回调示例如下<font color="red">（详细字段说明见结构：
    /// <a href="https://cloud.tencent.com/document/api/607/35375#DescribeScanResult" target="_blank">DescribeScanResult</a>）</font>：</li>
    /// <pre><code>{
    /// 	"Code": 0,
    /// 	"DataId": "1400000000_test_data_id",
    /// 	"ScanFinishTime": 1566720906,
    /// 	"HitFlag": true,
    /// 	"Live": false,
    /// 	"Msg": "",
    /// 	"ScanPiece": [{
    /// 		"DumpUrl": "",
    /// 		"HitFlag": true,
    /// 		"MainType": "abuse",
    /// 		"RoomId": "123",
    /// 		"OpenId": "111",
    /// 		"Info":"",
    /// 		"Offset": 0,
    /// 		"Duration": 3400,
    /// 		"PieceStartTime":1574684231,
    /// 		"ScanDetail": [{
    /// 			"EndTime": 1110,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 1110
    /// 		}, {
    /// 			"EndTime": 1380,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 1560,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 2820,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 2490
    /// 		}]
    /// 	}],
    /// 	"ScanStartTime": 1566720905,
    /// 	"Scenes": [
    /// 		"default"
    /// 	],
    /// 	"Status": "Success",
    /// 	"TaskId": "6330xxxx-9xx7-11ed-98e3-52xxxxe4ac3b",
    /// 	"Url": "https://xxx/xxx.m4a"
    /// }
    /// </code></pre>
    @inlinable
    public func scanVoice(bizId: UInt64, scenes: [String], live: Bool, tasks: [Task], callback: String? = nil, lang: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVoiceResponse> {
        self.scanVoice(.init(bizId: bizId, scenes: scenes, live: live, tasks: tasks, callback: callback, lang: lang), region: region, logger: logger, on: eventLoop)
    }

    /// 提交语音检测任务
    ///
    /// 本接口(ScanVoice)用于提交语音检测任务，检测任务列表最多支持100个。使用前请您登录[控制台 - 服务配置](https://console.cloud.tencent.com/gamegme/conf)开启语音内容安全服务。
    /// </br></br>
    ///
    /// <h4><b>功能试用说明：</b></h4>
    /// <li>打开前往<a href="https://console.cloud.tencent.com/gamegme/tryout">控制台 - 产品试用</a>免费试用语音内容安全服务。</li>
    /// </br>
    ///
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音流或语音文件进行检测，判断其中是否包含违规内容。</li>
    /// <li>支持设置回调地址 Callback 获取检测结果，同时支持通过接口(查询语音检测结果)主动轮询获取检测结果。</li>
    /// <li>支持场景输入，包括：谩骂、色情等场景</li>
    /// <li>支持批量提交检测任务。检测任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：100 M</li>
    /// <li>音频文件时长限制：30分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    /// <h4><b>语音流限制说明：</b></h4>
    /// <li>语音流格式支持的类型：.m3u8、.flv</li>
    /// <li>语音流支持的传输协议：RTMP、HTTP、HTTPS</li>
    /// <li>语音流时长限制：4小时</li>
    /// <li>支持音视频流分离并对音频流进行分析</li>
    /// </br>
    /// <h4 id="Label_Value"><b>Scenes 与 Label 参数说明：</b></h4>
    /// <p>提交语音检测任务时，需要指定 Scenes 场景参数，<font color="red">目前要求您设置 Scenes 参数值为：["default"]</font>；而在检测结果中，则包含请求时指定的场景，以及对应类型的检测结果。</p>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>场景</th>
    /// <th>描述</th>
    /// <th>Label</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>语音检测</td>
    /// <td>语音检测的检测类型</td>
    /// <td>
    /// <p>normal:正常文本</p>
    /// <p>porn:色情</p>
    /// <p>abuse:谩骂</p>
    /// <p>ad :广告</p>
    /// <p>illegal :违法</p>
    /// <p>moan :呻吟</p>
    /// <p>customized:自定义词库</p>
    /// </td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// </br>
    /// <h4 id="Callback_Declare"><b>回调相关说明：</b></h4>
    /// <li>如果在请求参数中指定了回调地址参数 Callback，即一个 HTTP(S) 协议接口的 URL，则需要支持 POST 方法，传输数据编码采用 UTF-8。</li>
    /// <li>在推送回调数据后，接收到的 HTTP 状态码为 200 时，表示推送成功。</li>
    /// <li>HTTP 请求参数（query）说明：</li>
    /// <table>
    /// <thread>
    /// <tr>
    /// <th>名称</th>
    /// <th>类型</th>
    /// <th>是否必需</th>
    /// <th>描述</th>
    /// </tr>
    /// </thread>
    /// <tbody>
    /// <tr>
    /// <td>Signatue</td>
    /// <td>string</td>
    /// <td>是</td>
    /// <td>签名，具体见<a href="#Callback_Signatue">签名生成说明</a></td>
    /// </tr>
    /// </tbody>
    /// </table>
    /// <ul  id="Callback_Signatue">
    /// 	<li>签名生成说明：</li>
    /// 	<ul>
    /// 		<li>使用 HMAC-SH1 算法, 最终结果做 BASE64 编码;</li>
    /// 		<li>签名原文串为 POST+body 的整个json内容(长度以 Content-Length 为准);</li>
    /// 		<li>签名key为应用的 SecretKey，可以通过控制台查看。</li>
    /// 	</ul>
    /// </ul>
    ///
    /// <li>回调示例如下<font color="red">（详细字段说明见结构：
    /// <a href="https://cloud.tencent.com/document/api/607/35375#DescribeScanResult" target="_blank">DescribeScanResult</a>）</font>：</li>
    /// <pre><code>{
    /// 	"Code": 0,
    /// 	"DataId": "1400000000_test_data_id",
    /// 	"ScanFinishTime": 1566720906,
    /// 	"HitFlag": true,
    /// 	"Live": false,
    /// 	"Msg": "",
    /// 	"ScanPiece": [{
    /// 		"DumpUrl": "",
    /// 		"HitFlag": true,
    /// 		"MainType": "abuse",
    /// 		"RoomId": "123",
    /// 		"OpenId": "111",
    /// 		"Info":"",
    /// 		"Offset": 0,
    /// 		"Duration": 3400,
    /// 		"PieceStartTime":1574684231,
    /// 		"ScanDetail": [{
    /// 			"EndTime": 1110,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 1110
    /// 		}, {
    /// 			"EndTime": 1380,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 1560,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 930
    /// 		}, {
    /// 			"EndTime": 2820,
    /// 			"KeyWord": "违规字",
    /// 			"Label": "abuse",
    /// 			"Rate": "90.00",
    /// 			"StartTime": 2490
    /// 		}]
    /// 	}],
    /// 	"ScanStartTime": 1566720905,
    /// 	"Scenes": [
    /// 		"default"
    /// 	],
    /// 	"Status": "Success",
    /// 	"TaskId": "6330xxxx-9xx7-11ed-98e3-52xxxxe4ac3b",
    /// 	"Url": "https://xxx/xxx.m4a"
    /// }
    /// </code></pre>
    @inlinable
    public func scanVoice(bizId: UInt64, scenes: [String], live: Bool, tasks: [Task], callback: String? = nil, lang: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVoiceResponse {
        try await self.scanVoice(.init(bizId: bizId, scenes: scenes, live: live, tasks: tasks, callback: callback, lang: lang), region: region, logger: logger, on: eventLoop)
    }
}
