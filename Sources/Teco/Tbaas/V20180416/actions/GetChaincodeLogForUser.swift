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

extension Tbaas {
    /// GetChaincodeLogForUser请求参数结构体
    public struct GetChaincodeLogForUserRequest: TCRequestModel {
        /// 模块名，本接口取值：chaincode_mng
        public let module: String

        /// 操作名，本接口取值：chaincode_log_for_user
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

        /// 日志开始时间，如"2020-11-24 19:49:25"
        public let beginTime: String

        /// 返回日志行数的最大值，系统设定该参数最大为1000，且一行日志的最大字节数是500，即最大返回50万个字节数的日志数据
        public let rowNum: Int64

        public init(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, beginTime: String, rowNum: Int64) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.chaincodeName = chaincodeName
            self.chaincodeVersion = chaincodeVersion
            self.peerName = peerName
            self.beginTime = beginTime
            self.rowNum = rowNum
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case chaincodeName = "ChaincodeName"
            case chaincodeVersion = "ChaincodeVersion"
            case peerName = "PeerName"
            case beginTime = "BeginTime"
            case rowNum = "RowNum"
        }
    }

    /// GetChaincodeLogForUser返回参数结构体
    public struct GetChaincodeLogForUserResponse: TCResponseModel {
        /// 返回日志总行数，不会超过入参的RowNum
        public let totalCount: UInt64

        /// 日志列表
        public let chaincodeLogList: [LogDetailForUser]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case chaincodeLogList = "ChaincodeLogList"
            case requestId = "RequestId"
        }
    }

    /// 获取合约容器日志
    @inlinable
    public func getChaincodeLogForUser(_ input: GetChaincodeLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChaincodeLogForUserResponse> {
        self.client.execute(action: "GetChaincodeLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取合约容器日志
    @inlinable
    public func getChaincodeLogForUser(_ input: GetChaincodeLogForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeLogForUserResponse {
        try await self.client.execute(action: "GetChaincodeLogForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取合约容器日志
    @inlinable
    public func getChaincodeLogForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, beginTime: String, rowNum: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChaincodeLogForUserResponse> {
        self.getChaincodeLogForUser(.init(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, peerName: peerName, beginTime: beginTime, rowNum: rowNum), region: region, logger: logger, on: eventLoop)
    }

    /// 获取合约容器日志
    @inlinable
    public func getChaincodeLogForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, peerName: String, beginTime: String, rowNum: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeLogForUserResponse {
        try await self.getChaincodeLogForUser(.init(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, peerName: peerName, beginTime: beginTime, rowNum: rowNum), region: region, logger: logger, on: eventLoop)
    }
}
