//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Live {
    /// CreateLiveWatermarkRule请求参数结构体
    public struct CreateLiveWatermarkRuleRequest: TCRequestModel {
        /// 推流域名。
        public let domainName: String

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        public let appName: String

        /// 流名称。
        public let streamName: String

        /// 水印Id，即调用[AddLiveWatermark](/document/product/267/30154)接口返回的WatermarkId。
        public let templateId: Int64

        public init(domainName: String, appName: String, streamName: String, templateId: Int64) {
            self.domainName = domainName
            self.appName = appName
            self.streamName = streamName
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case appName = "AppName"
            case streamName = "StreamName"
            case templateId = "TemplateId"
        }
    }

    /// CreateLiveWatermarkRule返回参数结构体
    public struct CreateLiveWatermarkRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建水印规则
    ///
    /// 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。
    @inlinable @discardableResult
    public func createLiveWatermarkRule(_ input: CreateLiveWatermarkRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveWatermarkRuleResponse> {
        self.client.execute(action: "CreateLiveWatermarkRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建水印规则
    ///
    /// 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。
    @inlinable @discardableResult
    public func createLiveWatermarkRule(_ input: CreateLiveWatermarkRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveWatermarkRuleResponse {
        try await self.client.execute(action: "CreateLiveWatermarkRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建水印规则
    ///
    /// 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。
    @inlinable @discardableResult
    public func createLiveWatermarkRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveWatermarkRuleResponse> {
        self.createLiveWatermarkRule(CreateLiveWatermarkRuleRequest(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建水印规则
    ///
    /// 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。
    @inlinable @discardableResult
    public func createLiveWatermarkRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveWatermarkRuleResponse {
        try await self.createLiveWatermarkRule(CreateLiveWatermarkRuleRequest(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
