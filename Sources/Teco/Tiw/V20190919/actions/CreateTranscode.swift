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

import Logging
import NIOCore
import TecoCore

extension Tiw {
    /// CreateTranscode请求参数结构体
    public struct CreateTranscodeRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 经过URL编码后的转码文件地址。URL 编码会将字符转换为可通过因特网传输的格式，比如文档地址为http://example.com/测试.pdf，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pdf。为了提高URL解析的成功率，请对URL进行编码。
        public let url: String

        /// 是否为静态PPT，默认为False；
        /// 如果IsStaticPPT为False，后缀名为.ppt或.pptx的文档会动态转码成HTML5页面，其他格式的文档会静态转码成图片；如果IsStaticPPT为True，所有格式的文档会静态转码成图片；
        public let isStaticPPT: Bool?

        /// 注意: 该参数已废弃, 请使用最新的 [云API SDK](https://cloud.tencent.com/document/api/1137/40060#SDK) ，使用 MinScaleResolution字段传递分辨率
        ///
        /// 转码后文档的最小分辨率，不传、传空字符串或分辨率格式错误则使用文档原分辨率
        ///
        /// 示例：1280x720，注意分辨率宽高中间为英文字母"xyz"的"x"
        public let minResolution: String?

        /// 动态PPT转码可以为文件生成该分辨率的缩略图，不传、传空字符串或分辨率格式错误则不生成缩略图，分辨率格式同MinResolution
        public let thumbnailResolution: String?

        /// 转码文件压缩格式，不传、传空字符串或不是指定的格式则不生成压缩文件，目前支持如下压缩格式：
        ///
        /// zip： 生成`.zip`压缩包
        /// tar.gz： 生成`.tar.gz`压缩包
        public let compressFileType: String?

        /// 内部参数
        public let extraData: String?

        /// 文档转码优先级， 只有对于PPT动态转码生效，支持填入以下值：
        ///
        /// - low: 低优先级转码，对于动态转码，能支持500MB（下载超时时间10分钟）以及2000页文档，但资源有限可能会有比较长时间的排队，请酌情使用该功能。
        /// - 不填表示正常优先级转码，支持200MB文件（下载超时时间2分钟），500页以内的文档进行转码
        ///
        /// 注意：对于PDF等静态文件转码，无论是正常优先级或者低优先级，最大只能支持200MB
        public let priority: String?

        /// 转码后文档的最小分辨率，不传、传空字符串或分辨率格式错误则使用文档原分辨率。
        /// 分辨率越高，效果越清晰，转出来的图片资源体积会越大，课件加载耗时会变长，请根据实际使用场景配置此参数。
        ///
        /// 示例：1280x720，注意分辨率宽高中间为英文字母"xyz"的"x"
        public let minScaleResolution: String?

        /// 此参数仅对动态转码生效。
        /// 是否对不支持元素开启自动处理的功能。默认不开启。
        ///
        /// 在开启自动处理的情况下，会自动进行如下处理：
        /// 1. 墨迹：移除不支持的墨迹（比如使用WPS画的）
        /// 2. 自动翻页：移除PPT上所有的自动翻页设置，并设置为单击鼠标翻页
        /// 3. 已损坏音视频：移除PPT上对损坏音视频的引用
        public let autoHandleUnsupportedElement: Bool?

        public init(sdkAppId: Int64, url: String, isStaticPPT: Bool? = nil, minResolution: String? = nil, thumbnailResolution: String? = nil, compressFileType: String? = nil, extraData: String? = nil, priority: String? = nil, minScaleResolution: String? = nil, autoHandleUnsupportedElement: Bool? = nil) {
            self.sdkAppId = sdkAppId
            self.url = url
            self.isStaticPPT = isStaticPPT
            self.minResolution = minResolution
            self.thumbnailResolution = thumbnailResolution
            self.compressFileType = compressFileType
            self.extraData = extraData
            self.priority = priority
            self.minScaleResolution = minScaleResolution
            self.autoHandleUnsupportedElement = autoHandleUnsupportedElement
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case url = "Url"
            case isStaticPPT = "IsStaticPPT"
            case minResolution = "MinResolution"
            case thumbnailResolution = "ThumbnailResolution"
            case compressFileType = "CompressFileType"
            case extraData = "ExtraData"
            case priority = "Priority"
            case minScaleResolution = "MinScaleResolution"
            case autoHandleUnsupportedElement = "AutoHandleUnsupportedElement"
        }
    }

    /// CreateTranscode返回参数结构体
    public struct CreateTranscodeResponse: TCResponse {
        /// 文档转码任务的唯一标识Id，用于查询该任务的进度以及转码结果
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建文档转码任务
    ///
    /// 创建一个文档转码任务
    @inlinable
    public func createTranscode(_ input: CreateTranscodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTranscodeResponse> {
        self.client.execute(action: "CreateTranscode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文档转码任务
    ///
    /// 创建一个文档转码任务
    @inlinable
    public func createTranscode(_ input: CreateTranscodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTranscodeResponse {
        try await self.client.execute(action: "CreateTranscode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文档转码任务
    ///
    /// 创建一个文档转码任务
    @inlinable
    public func createTranscode(sdkAppId: Int64, url: String, isStaticPPT: Bool? = nil, minResolution: String? = nil, thumbnailResolution: String? = nil, compressFileType: String? = nil, extraData: String? = nil, priority: String? = nil, minScaleResolution: String? = nil, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTranscodeResponse> {
        self.createTranscode(.init(sdkAppId: sdkAppId, url: url, isStaticPPT: isStaticPPT, minResolution: minResolution, thumbnailResolution: thumbnailResolution, compressFileType: compressFileType, extraData: extraData, priority: priority, minScaleResolution: minScaleResolution, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文档转码任务
    ///
    /// 创建一个文档转码任务
    @inlinable
    public func createTranscode(sdkAppId: Int64, url: String, isStaticPPT: Bool? = nil, minResolution: String? = nil, thumbnailResolution: String? = nil, compressFileType: String? = nil, extraData: String? = nil, priority: String? = nil, minScaleResolution: String? = nil, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTranscodeResponse {
        try await self.createTranscode(.init(sdkAppId: sdkAppId, url: url, isStaticPPT: isStaticPPT, minResolution: minResolution, thumbnailResolution: thumbnailResolution, compressFileType: compressFileType, extraData: extraData, priority: priority, minScaleResolution: minScaleResolution, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }
}
