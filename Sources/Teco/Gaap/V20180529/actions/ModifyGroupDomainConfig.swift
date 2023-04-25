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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gaap {
    /// ModifyGroupDomainConfig请求参数结构体
    public struct ModifyGroupDomainConfigRequest: TCRequestModel {
        /// 通道组ID。
        public let groupId: String

        /// 域名解析默认访问IP或域名。
        public let defaultDnsIp: String

        /// 就近接入区域配置。
        public let accessRegionList: [AccessRegionDomainConf]?

        public init(groupId: String, defaultDnsIp: String, accessRegionList: [AccessRegionDomainConf]? = nil) {
            self.groupId = groupId
            self.defaultDnsIp = defaultDnsIp
            self.accessRegionList = accessRegionList
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case defaultDnsIp = "DefaultDnsIp"
            case accessRegionList = "AccessRegionList"
        }
    }

    /// ModifyGroupDomainConfig返回参数结构体
    public struct ModifyGroupDomainConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置通道组就近接入域名（废弃）
    ///
    /// 本接口（ModifyGroupDomainConfig）用于配置通道组就近接入域名。
    @inlinable @discardableResult
    public func modifyGroupDomainConfig(_ input: ModifyGroupDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupDomainConfigResponse> {
        self.client.execute(action: "ModifyGroupDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置通道组就近接入域名（废弃）
    ///
    /// 本接口（ModifyGroupDomainConfig）用于配置通道组就近接入域名。
    @inlinable @discardableResult
    public func modifyGroupDomainConfig(_ input: ModifyGroupDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupDomainConfigResponse {
        try await self.client.execute(action: "ModifyGroupDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置通道组就近接入域名（废弃）
    ///
    /// 本接口（ModifyGroupDomainConfig）用于配置通道组就近接入域名。
    @inlinable @discardableResult
    public func modifyGroupDomainConfig(groupId: String, defaultDnsIp: String, accessRegionList: [AccessRegionDomainConf]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupDomainConfigResponse> {
        self.modifyGroupDomainConfig(.init(groupId: groupId, defaultDnsIp: defaultDnsIp, accessRegionList: accessRegionList), region: region, logger: logger, on: eventLoop)
    }

    /// 配置通道组就近接入域名（废弃）
    ///
    /// 本接口（ModifyGroupDomainConfig）用于配置通道组就近接入域名。
    @inlinable @discardableResult
    public func modifyGroupDomainConfig(groupId: String, defaultDnsIp: String, accessRegionList: [AccessRegionDomainConf]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupDomainConfigResponse {
        try await self.modifyGroupDomainConfig(.init(groupId: groupId, defaultDnsIp: defaultDnsIp, accessRegionList: accessRegionList), region: region, logger: logger, on: eventLoop)
    }
}
