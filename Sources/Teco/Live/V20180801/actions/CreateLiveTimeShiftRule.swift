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
    /// CreateLiveTimeShiftRule请求参数结构体
    public struct CreateLiveTimeShiftRuleRequest: TCRequest {
        /// 推流域名。
        public let domainName: String

        /// 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        public let appName: String

        /// 流名称。
        /// 注：如果本参数设置为非空字符串，规则将只对此推流起作用。
        public let streamName: String

        /// 模板 ID。
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

    /// CreateLiveTimeShiftRule返回参数结构体
    public struct CreateLiveTimeShiftRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建直播时移规则
    ///
    /// 创建直播时移规则，需要先调用[CreateLiveTimeShiftTemplate](/document/product/267/86169)接口创建直播时移模板，将返回的模板id绑定到流使用。
    ///
    /// 直播时移相关文档：[直播时移](/document/product/267/86134)。
    @inlinable @discardableResult
    public func createLiveTimeShiftRule(_ input: CreateLiveTimeShiftRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveTimeShiftRuleResponse> {
        self.client.execute(action: "CreateLiveTimeShiftRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播时移规则
    ///
    /// 创建直播时移规则，需要先调用[CreateLiveTimeShiftTemplate](/document/product/267/86169)接口创建直播时移模板，将返回的模板id绑定到流使用。
    ///
    /// 直播时移相关文档：[直播时移](/document/product/267/86134)。
    @inlinable @discardableResult
    public func createLiveTimeShiftRule(_ input: CreateLiveTimeShiftRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveTimeShiftRuleResponse {
        try await self.client.execute(action: "CreateLiveTimeShiftRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播时移规则
    ///
    /// 创建直播时移规则，需要先调用[CreateLiveTimeShiftTemplate](/document/product/267/86169)接口创建直播时移模板，将返回的模板id绑定到流使用。
    ///
    /// 直播时移相关文档：[直播时移](/document/product/267/86134)。
    @inlinable @discardableResult
    public func createLiveTimeShiftRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveTimeShiftRuleResponse> {
        self.createLiveTimeShiftRule(.init(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播时移规则
    ///
    /// 创建直播时移规则，需要先调用[CreateLiveTimeShiftTemplate](/document/product/267/86169)接口创建直播时移模板，将返回的模板id绑定到流使用。
    ///
    /// 直播时移相关文档：[直播时移](/document/product/267/86134)。
    @inlinable @discardableResult
    public func createLiveTimeShiftRule(domainName: String, appName: String, streamName: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveTimeShiftRuleResponse {
        try await self.createLiveTimeShiftRule(.init(domainName: domainName, appName: appName, streamName: streamName, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
