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

extension Vpc {
    /// CreateNetworkAclEntries请求参数结构体
    public struct CreateNetworkAclEntriesRequest: TCRequest {
        /// 网络ACL实例ID。例如：acl-12345678。
        public let networkAclId: String

        /// 网络三元组ACL规则集。
        public let networkAclEntrySet: NetworkAclEntrySet

        public init(networkAclId: String, networkAclEntrySet: NetworkAclEntrySet) {
            self.networkAclId = networkAclId
            self.networkAclEntrySet = networkAclEntrySet
        }

        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case networkAclEntrySet = "NetworkAclEntrySet"
        }
    }

    /// CreateNetworkAclEntries返回参数结构体
    public struct CreateNetworkAclEntriesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 增量添加网络ACL三元组规则接口
    ///
    /// 本接口（CreateNetworkAclEntries）用于增量添加网络ACL三元组的入站规则和出站规则。
    @inlinable @discardableResult
    public func createNetworkAclEntries(_ input: CreateNetworkAclEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkAclEntriesResponse> {
        self.client.execute(action: "CreateNetworkAclEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增量添加网络ACL三元组规则接口
    ///
    /// 本接口（CreateNetworkAclEntries）用于增量添加网络ACL三元组的入站规则和出站规则。
    @inlinable @discardableResult
    public func createNetworkAclEntries(_ input: CreateNetworkAclEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkAclEntriesResponse {
        try await self.client.execute(action: "CreateNetworkAclEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增量添加网络ACL三元组规则接口
    ///
    /// 本接口（CreateNetworkAclEntries）用于增量添加网络ACL三元组的入站规则和出站规则。
    @inlinable @discardableResult
    public func createNetworkAclEntries(networkAclId: String, networkAclEntrySet: NetworkAclEntrySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkAclEntriesResponse> {
        self.createNetworkAclEntries(.init(networkAclId: networkAclId, networkAclEntrySet: networkAclEntrySet), region: region, logger: logger, on: eventLoop)
    }

    /// 增量添加网络ACL三元组规则接口
    ///
    /// 本接口（CreateNetworkAclEntries）用于增量添加网络ACL三元组的入站规则和出站规则。
    @inlinable @discardableResult
    public func createNetworkAclEntries(networkAclId: String, networkAclEntrySet: NetworkAclEntrySet, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkAclEntriesResponse {
        try await self.createNetworkAclEntries(.init(networkAclId: networkAclId, networkAclEntrySet: networkAclEntrySet), region: region, logger: logger, on: eventLoop)
    }
}