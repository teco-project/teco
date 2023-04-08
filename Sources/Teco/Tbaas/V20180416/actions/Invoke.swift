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
    /// Invoke请求参数结构体
    public struct InvokeRequest: TCRequestModel {
        /// 模块名，固定字段：transaction
        public let module: String

        /// 操作名，固定字段：invoke
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 业务所属智能合约名称，可在智能合约详情或列表中获取
        public let chaincodeName: String

        /// 业务所属通道名称，可在通道详情或列表中获取
        public let channelName: String

        /// 对该笔交易进行背书的节点列表（包括节点名称和节点所属组织名称，详见数据结构一节），可以在通道详情中获取该通道上的节点名称及其所属组织名称
        public let peers: [PeerSet]

        /// 该笔交易需要调用的智能合约中的函数名称
        public let funcName: String

        /// 调用合约的组织名称，可以在组织管理列表中获取当前组织的名称
        public let groupName: String

        /// 被调用的函数参数列表，参数列表大小总和要求小于2M
        public let args: [String]?

        /// 同步调用标识，可选参数，值为0或者不传表示使用同步方法调用，调用后会等待交易执行后再返回执行结果；值为1时表示使用异步方式调用Invoke，执行后会立即返回交易对应的Txid，后续需要通过GetInvokeTx这个API查询该交易的执行结果。（对于逻辑较为简单的交易，可以使用同步模式；对于逻辑较为复杂的交易，建议使用异步模式，否则容易导致API因等待时间过长，返回等待超时）
        public let asyncFlag: UInt64?

        public init(module: String, operation: String, clusterId: String, chaincodeName: String, channelName: String, peers: [PeerSet], funcName: String, groupName: String, args: [String]? = nil, asyncFlag: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.chaincodeName = chaincodeName
            self.channelName = channelName
            self.peers = peers
            self.funcName = funcName
            self.groupName = groupName
            self.args = args
            self.asyncFlag = asyncFlag
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case chaincodeName = "ChaincodeName"
            case channelName = "ChannelName"
            case peers = "Peers"
            case funcName = "FuncName"
            case groupName = "GroupName"
            case args = "Args"
            case asyncFlag = "AsyncFlag"
        }
    }

    /// Invoke返回参数结构体
    public struct InvokeResponse: TCResponseModel {
        /// 交易ID
        public let txid: String

        /// 交易执行结果
        public let events: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case txid = "Txid"
            case events = "Events"
            case requestId = "RequestId"
        }
    }

    /// 新增交易
    @inlinable
    public func invoke(_ input: InvokeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeResponse> {
        self.client.execute(action: "Invoke", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增交易
    @inlinable
    public func invoke(_ input: InvokeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeResponse {
        try await self.client.execute(action: "Invoke", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增交易
    @inlinable
    public func invoke(module: String, operation: String, clusterId: String, chaincodeName: String, channelName: String, peers: [PeerSet], funcName: String, groupName: String, args: [String]? = nil, asyncFlag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeResponse> {
        self.invoke(.init(module: module, operation: operation, clusterId: clusterId, chaincodeName: chaincodeName, channelName: channelName, peers: peers, funcName: funcName, groupName: groupName, args: args, asyncFlag: asyncFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 新增交易
    @inlinable
    public func invoke(module: String, operation: String, clusterId: String, chaincodeName: String, channelName: String, peers: [PeerSet], funcName: String, groupName: String, args: [String]? = nil, asyncFlag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeResponse {
        try await self.invoke(.init(module: module, operation: operation, clusterId: clusterId, chaincodeName: chaincodeName, channelName: channelName, peers: peers, funcName: funcName, groupName: groupName, args: args, asyncFlag: asyncFlag), region: region, logger: logger, on: eventLoop)
    }
}
