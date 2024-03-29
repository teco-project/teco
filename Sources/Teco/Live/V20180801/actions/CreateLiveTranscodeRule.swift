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

extension Live {
    /// CreateLiveTranscodeRule请求参数结构体
    public struct CreateLiveTranscodeRuleRequest: TCRequest {
        /// 播放域名。
        public let domainName: String

        /// 推流路径，与推流和播放地址中的AppName保持一致。如果只绑定域名，则此处填""。
        public let appName: String

        /// 流名称。如果只绑定域名或路径，则此处填空。
        public let streamName: String

        /// 指定已有的模板Id。
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

    /// CreateLiveTranscodeRule返回参数结构体
    public struct CreateLiveTranscodeRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建转码规则
    ///
    /// 创建转码规则，数量上限：50，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
    ///
    /// 转码相关文档：[直播转封装及转码](/document/product/267/32736)。
    @inlinable @discardableResult
    public func createLiveTranscodeRule(_ input: CreateLiveTranscodeRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveTranscodeRuleResponse> {
        self.client.execute(action: "CreateLiveTranscodeRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转码规则
    ///
    /// 创建转码规则，数量上限：50，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
    ///
    /// 转码相关文档：[直播转封装及转码](/document/product/267/32736)。
    @inlinable @discardableResult
    public func createLiveTranscodeRule(_ input: CreateLiveTranscodeRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveTranscodeRuleResponse {
        try await self.client.execute(action: "CreateLiveTranscodeRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转码规则
    ///
    /// 创建转码规则，数量上限：50，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
    ///
    /// 转码相关文档：[直播转封装及转码](/document/product/267/32736)。
    @inlinable @discardableResult
    public func createLiveTranscodeRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveTranscodeRuleResponse> {
        self.createLiveTranscodeRule(.init(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转码规则
    ///
    /// 创建转码规则，数量上限：50，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
    ///
    /// 转码相关文档：[直播转封装及转码](/document/product/267/32736)。
    @inlinable @discardableResult
    public func createLiveTranscodeRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveTranscodeRuleResponse {
        try await self.createLiveTranscodeRule(.init(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
