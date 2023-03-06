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

import TecoPaginationHelpers

extension Tbaas {
    /// GetChaincodeCompileLogForUser请求参数结构体
    public struct GetChaincodeCompileLogForUserRequest: TCPaginatedRequest {
        /// 模块名，本接口取值：chaincode_mng
        public let module: String

        /// 操作名，本接口取值：chaincode_compile_log_for_user
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 调用合约的组织名称
        public let groupName: String

        /// 业务所属智能合约名称
        public let chaincodeName: String

        /// 业务所属智能合约版本
        public let chaincodeVersion: String

        /// 合约安装节点名称，可以在通道详情中获取该通道上的节点名称
        public let peerName: String

        /// 返回数据项数，本接口默认取值：10
        public let limit: UInt64?

        /// 返回数据起始偏移，本接口默认取值：0
        public let offset: UInt64?

        public init(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.chaincodeName = chaincodeName
            self.chaincodeVersion = chaincodeVersion
            self.peerName = peerName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case chaincodeName = "ChaincodeName"
            case chaincodeVersion = "ChaincodeVersion"
            case peerName = "PeerName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetChaincodeCompileLogForUserResponse) -> GetChaincodeCompileLogForUserRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetChaincodeCompileLogForUserRequest(module: self.module, operation: self.operation, clusterId: self.clusterId, groupName: self.groupName, chaincodeName: self.chaincodeName, chaincodeVersion: self.chaincodeVersion, peerName: self.peerName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// GetChaincodeCompileLogForUser返回参数结构体
    public struct GetChaincodeCompileLogForUserResponse: TCPaginatedResponse {
        /// 日志总行数，上限2000条日志
        public let totalCount: UInt64

        /// 日志列表
        public let compileLogList: [LogDetailForUser]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case compileLogList = "CompileLogList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LogDetailForUser] {
            self.compileLogList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取合约编译日志
    @inlinable
    public func getChaincodeCompileLogForUser(_ input: GetChaincodeCompileLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChaincodeCompileLogForUserResponse> {
        self.client.execute(action: "GetChaincodeCompileLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取合约编译日志
    @inlinable
    public func getChaincodeCompileLogForUser(_ input: GetChaincodeCompileLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeCompileLogForUserResponse {
        try await self.client.execute(action: "GetChaincodeCompileLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取合约编译日志
    @inlinable
    public func getChaincodeCompileLogForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChaincodeCompileLogForUserResponse> {
        let input = GetChaincodeCompileLogForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, peerName: peerName, limit: limit, offset: offset)
        return self.client.execute(action: "GetChaincodeCompileLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取合约编译日志
    @inlinable
    public func getChaincodeCompileLogForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeCompileLogForUserResponse {
        let input = GetChaincodeCompileLogForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, peerName: peerName, limit: limit, offset: offset)
        return try await self.client.execute(action: "GetChaincodeCompileLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取合约编译日志
    @inlinable
    public func getChaincodeCompileLogForUserPaginated(_ input: GetChaincodeCompileLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LogDetailForUser])> {
        self.client.paginate(input: input, region: region, command: self.getChaincodeCompileLogForUser, logger: logger, on: eventLoop)
    }

    /// 获取合约编译日志
    @inlinable @discardableResult
    public func getChaincodeCompileLogForUserPaginated(_ input: GetChaincodeCompileLogForUserRequest, region: TCRegion? = nil, onResponse: @escaping (GetChaincodeCompileLogForUserResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getChaincodeCompileLogForUser, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取合约编译日志
    ///
    /// - Returns: `AsyncSequence`s of `LogDetailForUser` and `GetChaincodeCompileLogForUserResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getChaincodeCompileLogForUserPaginator(_ input: GetChaincodeCompileLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetChaincodeCompileLogForUserRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getChaincodeCompileLogForUser, logger: logger, on: eventLoop)
    }
}
