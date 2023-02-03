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

extension Vpc {
    /// DeleteNetworkAclQuintupleEntries请求参数结构体
    public struct DeleteNetworkAclQuintupleEntriesRequest: TCRequestModel {
        /// 网络ACL实例ID。例如：acl-12345678。
        public let networkAclId: String

        /// 网络五元组ACL规则集。
        public let networkAclQuintupleSet: NetworkAclQuintupleEntries

        public init(networkAclId: String, networkAclQuintupleSet: NetworkAclQuintupleEntries) {
            self.networkAclId = networkAclId
            self.networkAclQuintupleSet = networkAclQuintupleSet
        }

        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case networkAclQuintupleSet = "NetworkAclQuintupleSet"
        }
    }

    /// DeleteNetworkAclQuintupleEntries返回参数结构体
    public struct DeleteNetworkAclQuintupleEntriesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除网络ACL五元组指定的部分条目接口。
    ///
    /// 本接口（DeleteNetworkAclQuintupleEntries）用于删除网络ACL五元组指定的入站规则和出站规则（但不是全量删除该ACL下的所有条目）。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable @discardableResult
    public func deleteNetworkAclQuintupleEntries(_ input: DeleteNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkAclQuintupleEntriesResponse> {
        self.client.execute(action: "DeleteNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除网络ACL五元组指定的部分条目接口。
    ///
    /// 本接口（DeleteNetworkAclQuintupleEntries）用于删除网络ACL五元组指定的入站规则和出站规则（但不是全量删除该ACL下的所有条目）。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable @discardableResult
    public func deleteNetworkAclQuintupleEntries(_ input: DeleteNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkAclQuintupleEntriesResponse {
        try await self.client.execute(action: "DeleteNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除网络ACL五元组指定的部分条目接口。
    ///
    /// 本接口（DeleteNetworkAclQuintupleEntries）用于删除网络ACL五元组指定的入站规则和出站规则（但不是全量删除该ACL下的所有条目）。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable @discardableResult
    public func deleteNetworkAclQuintupleEntries(networkAclId: String, networkAclQuintupleSet: NetworkAclQuintupleEntries, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkAclQuintupleEntriesResponse> {
        let input = DeleteNetworkAclQuintupleEntriesRequest(networkAclId: networkAclId, networkAclQuintupleSet: networkAclQuintupleSet)
        return self.client.execute(action: "DeleteNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除网络ACL五元组指定的部分条目接口。
    ///
    /// 本接口（DeleteNetworkAclQuintupleEntries）用于删除网络ACL五元组指定的入站规则和出站规则（但不是全量删除该ACL下的所有条目）。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。
    @inlinable @discardableResult
    public func deleteNetworkAclQuintupleEntries(networkAclId: String, networkAclQuintupleSet: NetworkAclQuintupleEntries, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkAclQuintupleEntriesResponse {
        let input = DeleteNetworkAclQuintupleEntriesRequest(networkAclId: networkAclId, networkAclQuintupleSet: networkAclQuintupleSet)
        return try await self.client.execute(action: "DeleteNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
