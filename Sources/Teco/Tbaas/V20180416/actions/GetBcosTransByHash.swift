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

extension Tbaas {
    /// GetBcosTransByHash请求参数结构体
    public struct GetBcosTransByHashRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 群组编号，可在群组列表中获取
        public let groupId: Int64

        /// 交易哈希值，可以从InvokeBcosTrans接口的返回值中解析获取
        public let transHash: String

        public init(clusterId: String, groupId: Int64, transHash: String) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.transHash = transHash
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case transHash = "TransHash"
        }
    }

    /// GetBcosTransByHash返回参数结构体
    public struct GetBcosTransByHashResponse: TCResponseModel {
        /// 交易信息json字符串
        public let transactionJson: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case transactionJson = "TransactionJson"
            case requestId = "RequestId"
        }
    }

    /// 使用交易哈希查询Bcos交易信息
    ///
    /// Bcos根据交易哈希查看交易详细信息
    @inlinable
    public func getBcosTransByHash(_ input: GetBcosTransByHashRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBcosTransByHashResponse> {
        self.client.execute(action: "GetBcosTransByHash", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用交易哈希查询Bcos交易信息
    ///
    /// Bcos根据交易哈希查看交易详细信息
    @inlinable
    public func getBcosTransByHash(_ input: GetBcosTransByHashRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBcosTransByHashResponse {
        try await self.client.execute(action: "GetBcosTransByHash", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用交易哈希查询Bcos交易信息
    ///
    /// Bcos根据交易哈希查看交易详细信息
    @inlinable
    public func getBcosTransByHash(clusterId: String, groupId: Int64, transHash: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBcosTransByHashResponse> {
        self.getBcosTransByHash(GetBcosTransByHashRequest(clusterId: clusterId, groupId: groupId, transHash: transHash), region: region, logger: logger, on: eventLoop)
    }

    /// 使用交易哈希查询Bcos交易信息
    ///
    /// Bcos根据交易哈希查看交易详细信息
    @inlinable
    public func getBcosTransByHash(clusterId: String, groupId: Int64, transHash: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBcosTransByHashResponse {
        try await self.getBcosTransByHash(GetBcosTransByHashRequest(clusterId: clusterId, groupId: groupId, transHash: transHash), region: region, logger: logger, on: eventLoop)
    }
}
