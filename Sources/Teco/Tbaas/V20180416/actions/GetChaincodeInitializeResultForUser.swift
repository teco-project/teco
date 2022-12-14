//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// GetChaincodeInitializeResultForUser请求参数结构体
    public struct GetChaincodeInitializeResultForUserRequest: TCRequestModel {
        /// 模块名，本接口取值：chaincode_mng
        public let module: String

        /// 操作名，本接口取值：chaincode_init_result_for_user
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 调用合约的组织名称
        public let groupName: String

        /// 业务所属通道名称
        public let channelName: String

        /// 业务所属合约名称
        public let chaincodeName: String

        /// 业务所属智能合约版本
        public let chaincodeVersion: String

        /// 实例化任务ID
        public let taskId: UInt64

        public init(module: String, operation: String, clusterId: String, groupName: String, channelName: String, chaincodeName: String, chaincodeVersion: String, taskId: UInt64) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.channelName = channelName
            self.chaincodeName = chaincodeName
            self.chaincodeVersion = chaincodeVersion
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case channelName = "ChannelName"
            case chaincodeName = "ChaincodeName"
            case chaincodeVersion = "ChaincodeVersion"
            case taskId = "TaskId"
        }
    }

    /// GetChaincodeInitializeResultForUser返回参数结构体
    public struct GetChaincodeInitializeResultForUserResponse: TCResponseModel {
        /// 实例化结果：0，实例化中；1，实例化成功；2，实例化失败
        public let initResult: UInt64

        /// 实例化信息
        public let initMessage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case initResult = "InitResult"
            case initMessage = "InitMessage"
            case requestId = "RequestId"
        }
    }

    /// 实例化结果查询
    @inlinable
    public func getChaincodeInitializeResultForUser(_ input: GetChaincodeInitializeResultForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetChaincodeInitializeResultForUserResponse > {
        self.client.execute(action: "GetChaincodeInitializeResultForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例化结果查询
    @inlinable
    public func getChaincodeInitializeResultForUser(_ input: GetChaincodeInitializeResultForUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeInitializeResultForUserResponse {
        try await self.client.execute(action: "GetChaincodeInitializeResultForUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例化结果查询
    @inlinable
    public func getChaincodeInitializeResultForUser(module: String, operation: String, clusterId: String, groupName: String, channelName: String, chaincodeName: String, chaincodeVersion: String, taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetChaincodeInitializeResultForUserResponse > {
        self.getChaincodeInitializeResultForUser(GetChaincodeInitializeResultForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, channelName: channelName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 实例化结果查询
    @inlinable
    public func getChaincodeInitializeResultForUser(module: String, operation: String, clusterId: String, groupName: String, channelName: String, chaincodeName: String, chaincodeVersion: String, taskId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChaincodeInitializeResultForUserResponse {
        try await self.getChaincodeInitializeResultForUser(GetChaincodeInitializeResultForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, channelName: channelName, chaincodeName: chaincodeName, chaincodeVersion: chaincodeVersion, taskId: taskId), logger: logger, on: eventLoop)
    }
}
