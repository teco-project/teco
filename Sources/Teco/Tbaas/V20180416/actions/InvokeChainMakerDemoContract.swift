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

extension Tbaas {
    /// InvokeChainMakerDemoContract请求参数结构体
    public struct InvokeChainMakerDemoContractRequest: TCRequest {
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

        /// 是否异步执行，1为是，否则为0；如果异步执行，可使用返回值中的交易TxID查询执行结果
        public let asyncFlag: Int64?

        public init(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil, asyncFlag: Int64? = nil) {
            self.clusterId = clusterId
            self.chainId = chainId
            self.contractName = contractName
            self.funcName = funcName
            self.funcParam = funcParam
            self.asyncFlag = asyncFlag
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case chainId = "ChainId"
            case contractName = "ContractName"
            case funcName = "FuncName"
            case funcParam = "FuncParam"
            case asyncFlag = "AsyncFlag"
        }
    }

    /// InvokeChainMakerDemoContract返回参数结构体
    public struct InvokeChainMakerDemoContractResponse: TCResponse {
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

    /// 调用长安链体验网络合约执行交易
    @inlinable
    public func invokeChainMakerDemoContract(_ input: InvokeChainMakerDemoContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeChainMakerDemoContractResponse> {
        self.client.execute(action: "InvokeChainMakerDemoContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调用长安链体验网络合约执行交易
    @inlinable
    public func invokeChainMakerDemoContract(_ input: InvokeChainMakerDemoContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeChainMakerDemoContractResponse {
        try await self.client.execute(action: "InvokeChainMakerDemoContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调用长安链体验网络合约执行交易
    @inlinable
    public func invokeChainMakerDemoContract(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil, asyncFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeChainMakerDemoContractResponse> {
        self.invokeChainMakerDemoContract(.init(clusterId: clusterId, chainId: chainId, contractName: contractName, funcName: funcName, funcParam: funcParam, asyncFlag: asyncFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 调用长安链体验网络合约执行交易
    @inlinable
    public func invokeChainMakerDemoContract(clusterId: String, chainId: String, contractName: String, funcName: String, funcParam: String? = nil, asyncFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeChainMakerDemoContractResponse {
        try await self.invokeChainMakerDemoContract(.init(clusterId: clusterId, chainId: chainId, contractName: contractName, funcName: funcName, funcParam: funcParam, asyncFlag: asyncFlag), region: region, logger: logger, on: eventLoop)
    }
}
