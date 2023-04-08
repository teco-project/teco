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

import TecoCore

extension Tbaas {
    /// QueryChainMakerDemoContract请求参数结构体
    public struct QueryChainMakerDemoContractRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 业务链ID，可在网络概览页获取
        public let chainId: String

        /// 合约名称，可在合约管理中获取
        public let contractName: String

        /// 合约方法名
        public let funcName: String

        /// 合约方法入参，json格式字符串，key/value都是string类型的map
        public let funcParam: String?

        public init(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil) {
            self.clusterId = clusterId
            self.chainId = chainId
            self.contractName = contractName
            self.funcName = funcName
            self.funcParam = funcParam
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case chainId = "ChainId"
            case contractName = "ContractName"
            case funcName = "FuncName"
            case funcParam = "FuncParam"
        }
    }

    /// QueryChainMakerDemoContract返回参数结构体
    public struct QueryChainMakerDemoContractResponse: TCResponseModel {
        /// 交易结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ChainMakerContractResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 调用长安链体验网络合约查询
    @inlinable
    public func queryChainMakerDemoContract(_ input: QueryChainMakerDemoContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerDemoContractResponse> {
        self.client.execute(action: "QueryChainMakerDemoContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调用长安链体验网络合约查询
    @inlinable
    public func queryChainMakerDemoContract(_ input: QueryChainMakerDemoContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerDemoContractResponse {
        try await self.client.execute(action: "QueryChainMakerDemoContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调用长安链体验网络合约查询
    @inlinable
    public func queryChainMakerDemoContract(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerDemoContractResponse> {
        self.queryChainMakerDemoContract(.init(clusterId: clusterId, chainId: chainId, contractName: contractName, funcName: funcName, funcParam: funcParam), region: region, logger: logger, on: eventLoop)
    }

    /// 调用长安链体验网络合约查询
    @inlinable
    public func queryChainMakerDemoContract(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerDemoContractResponse {
        try await self.queryChainMakerDemoContract(.init(clusterId: clusterId, chainId: chainId, contractName: contractName, funcName: funcName, funcParam: funcParam), region: region, logger: logger, on: eventLoop)
    }
}
