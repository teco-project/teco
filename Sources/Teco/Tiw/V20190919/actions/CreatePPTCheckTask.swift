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
    /// CreatePPTCheckTask请求参数结构体
    public struct CreatePPTCheckTaskRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 经过URL编码后的PPT文件地址。URL 编码会将字符转换为可通过因特网传输的格式，例如文档地址为http://example.com/测试.pptx，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pptx。为了提高URL解析的成功率，请对URL进行编码。
        public let url: String

        /// 是否对不支持元素开启自动处理的功能。默认不开启。
        ///
        /// 在开启自动处理的情况下，会自动进行如下处理：
        /// 1. 墨迹：移除不支持的墨迹（比如使用WPS画的）
        /// 2. 自动翻页：移除PPT上所有的自动翻页设置，并设置为单击鼠标翻页
        /// 3. 已损坏音视频：移除PPT上对损坏音视频的引用
        public let autoHandleUnsupportedElement: Bool?

        public init(sdkAppId: Int64, url: String, autoHandleUnsupportedElement: Bool? = nil) {
            self.sdkAppId = sdkAppId
            self.url = url
            self.autoHandleUnsupportedElement = autoHandleUnsupportedElement
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case url = "Url"
            case autoHandleUnsupportedElement = "AutoHandleUnsupportedElement"
        }
    }

    /// CreatePPTCheckTask返回参数结构体
    public struct CreatePPTCheckTaskResponse: TCResponseModel {
        /// 检测任务的唯一标识Id，用于查询该任务的进度以及检测结果
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建PPT检测任务
    ///
    /// 检测PPT文件，识别PPT中包含的动态转码任务（Transcode）不支持的元素
    @inlinable
    public func createPPTCheckTask(_ input: CreatePPTCheckTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePPTCheckTaskResponse> {
        self.client.execute(action: "CreatePPTCheckTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建PPT检测任务
    ///
    /// 检测PPT文件，识别PPT中包含的动态转码任务（Transcode）不支持的元素
    @inlinable
    public func createPPTCheckTask(_ input: CreatePPTCheckTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePPTCheckTaskResponse {
        try await self.client.execute(action: "CreatePPTCheckTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建PPT检测任务
    ///
    /// 检测PPT文件，识别PPT中包含的动态转码任务（Transcode）不支持的元素
    @inlinable
    public func createPPTCheckTask(sdkAppId: Int64, url: String, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePPTCheckTaskResponse> {
        self.createPPTCheckTask(.init(sdkAppId: sdkAppId, url: url, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }

    /// 创建PPT检测任务
    ///
    /// 检测PPT文件，识别PPT中包含的动态转码任务（Transcode）不支持的元素
    @inlinable
    public func createPPTCheckTask(sdkAppId: Int64, url: String, autoHandleUnsupportedElement: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePPTCheckTaskResponse {
        try await self.createPPTCheckTask(.init(sdkAppId: sdkAppId, url: url, autoHandleUnsupportedElement: autoHandleUnsupportedElement), region: region, logger: logger, on: eventLoop)
    }
}
