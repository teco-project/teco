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
    /// QueryChainMakerTransaction请求参数结构体
    public struct QueryChainMakerTransactionRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 业务链编号，可在业务链列表中获取
        public let chainId: String

        /// 交易ID，通过调用合约的返回值获取
        public let txID: String

        public init(clusterId: String, chainId: String, txID: String) {
            self.clusterId = clusterId
            self.chainId = chainId
            self.txID = txID
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case chainId = "ChainId"
            case txID = "TxID"
        }
    }

    /// QueryChainMakerTransaction返回参数结构体
    public struct QueryChainMakerTransactionResponse: TCResponseModel {
        /// 交易结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ChainMakerTransactionResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 通过交易ID查询长安链交易
    @inlinable
    public func queryChainMakerTransaction(_ input: QueryChainMakerTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerTransactionResponse> {
        self.client.execute(action: "QueryChainMakerTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过交易ID查询长安链交易
    @inlinable
    public func queryChainMakerTransaction(_ input: QueryChainMakerTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerTransactionResponse {
        try await self.client.execute(action: "QueryChainMakerTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过交易ID查询长安链交易
    @inlinable
    public func queryChainMakerTransaction(clusterId: String, chainId: String, txID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerTransactionResponse> {
        self.queryChainMakerTransaction(QueryChainMakerTransactionRequest(clusterId: clusterId, chainId: chainId, txID: txID), region: region, logger: logger, on: eventLoop)
    }

    /// 通过交易ID查询长安链交易
    @inlinable
    public func queryChainMakerTransaction(clusterId: String, chainId: String, txID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerTransactionResponse {
        try await self.queryChainMakerTransaction(QueryChainMakerTransactionRequest(clusterId: clusterId, chainId: chainId, txID: txID), region: region, logger: logger, on: eventLoop)
    }
}
