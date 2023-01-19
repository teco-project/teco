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
    /// InitializeChaincodeForUser请求参数结构体
    public struct InitializeChaincodeForUserRequest: TCRequestModel {
        /// 模块名，本接口取值：chaincode_mng
        public let module: String

        /// 操作名，本接口取值：chaincode_init_for_user
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 调用合约的组织名称
        public let groupName: String

        /// 业务所属智能合约名称
        public let chaincodeName: String

        /// 业务所属智能合约版本
        public let chaincodeVersion: String

        /// 业务所属通道名称
        public let channelName: String

        /// 合约实例化节点名称，可以在通道详情中获取该通道上的节点名称
        public let peerName: String

        /// 实例化的函数参数列表
        public let args: [String]?

        public init(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, channelName: String, peerName: String, args: [String]? = nil) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.chaincodeName = chaincodeName
            self.chaincodeVersion = chaincodeVersion
            self.channelName = channelName
            self.peerName = peerName
            self.args = args
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case chaincodeName = "ChaincodeName"
            case chaincodeVersion = "ChaincodeVersion"
            case channelName = "ChannelName"
            case peerName = "PeerName"
            case args = "Args"
        }
    }

    /// InitializeChaincodeForUser返回参数结构体
    public struct InitializeChaincodeForUserResponse: TCResponseModel {
        /// 实例化任务ID，用于查询实例化结果
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 实例化合约
    @inlinable
    public func initializeChaincodeForUser(_ input: InitializeChaincodeForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitializeChaincodeForUserResponse> {
        self.client.execute(action: "InitializeChaincodeForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例化合约
    @inlinable
    public func initializeChaincodeForUser(_ input: InitializeChaincodeForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeChaincodeForUserResponse {
        try await self.client.execute(action: "InitializeChaincodeForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例化合约
    @inlinable
    public func initializeChaincodeForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, channelName: String, peerName: String, args: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitializeChaincodeForUserResponse> {
        self.initializeChaincodeForUser(InitializeChaincodeForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, channelName: channelName, peerName: peerName, args: args), region: region, logger: logger, on: eventLoop)
    }

    /// 实例化合约
    @inlinable
    public func initializeChaincodeForUser(module: String, operation: String, clusterId: String, groupName: String, chaincodeName: String, chaincodeVersion: String, channelName: String, peerName: String, args: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeChaincodeForUserResponse {
        try await self.initializeChaincodeForUser(InitializeChaincodeForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, channelName: channelName, peerName: peerName, args: args), region: region, logger: logger, on: eventLoop)
    }
}
