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

extension Cdn {
    /// ManageClsTopicDomains请求参数结构体
    public struct ManageClsTopicDomainsRequest: TCRequest {
        /// 日志集ID
        public let logsetId: String

        /// 日志主题ID
        public let topicId: String

        /// 接入渠道，cdn或者ecdn，默认值为cdn
        public let channel: String?

        /// 域名区域配置，注意：如果此字段为空，则表示解绑对应主题下的所有域名
        public let domainAreaConfigs: [DomainAreaConfig]?

        public init(logsetId: String, topicId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil) {
            self.logsetId = logsetId
            self.topicId = topicId
            self.channel = channel
            self.domainAreaConfigs = domainAreaConfigs
        }

        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case topicId = "TopicId"
            case channel = "Channel"
            case domainAreaConfigs = "DomainAreaConfigs"
        }
    }

    /// ManageClsTopicDomains返回参数结构体
    public struct ManageClsTopicDomainsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 管理日志主题下绑定的域名
    ///
    /// ManageClsTopicDomains 用于管理某日志主题下绑定的域名列表。
    @inlinable @discardableResult
    public func manageClsTopicDomains(_ input: ManageClsTopicDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ManageClsTopicDomainsResponse> {
        self.client.execute(action: "ManageClsTopicDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 管理日志主题下绑定的域名
    ///
    /// ManageClsTopicDomains 用于管理某日志主题下绑定的域名列表。
    @inlinable @discardableResult
    public func manageClsTopicDomains(_ input: ManageClsTopicDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageClsTopicDomainsResponse {
        try await self.client.execute(action: "ManageClsTopicDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 管理日志主题下绑定的域名
    ///
    /// ManageClsTopicDomains 用于管理某日志主题下绑定的域名列表。
    @inlinable @discardableResult
    public func manageClsTopicDomains(logsetId: String, topicId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ManageClsTopicDomainsResponse> {
        self.manageClsTopicDomains(.init(logsetId: logsetId, topicId: topicId, channel: channel, domainAreaConfigs: domainAreaConfigs), region: region, logger: logger, on: eventLoop)
    }

    /// 管理日志主题下绑定的域名
    ///
    /// ManageClsTopicDomains 用于管理某日志主题下绑定的域名列表。
    @inlinable @discardableResult
    public func manageClsTopicDomains(logsetId: String, topicId: String, channel: String? = nil, domainAreaConfigs: [DomainAreaConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageClsTopicDomainsResponse {
        try await self.manageClsTopicDomains(.init(logsetId: logsetId, topicId: topicId, channel: channel, domainAreaConfigs: domainAreaConfigs), region: region, logger: logger, on: eventLoop)
    }
}
