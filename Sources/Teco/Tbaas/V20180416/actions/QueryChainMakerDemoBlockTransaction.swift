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
    /// QueryChainMakerDemoBlockTransaction请求参数结构体
    public struct QueryChainMakerDemoBlockTransactionRequest: TCRequest {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 业务链ID，可在网络概览页获取
        public let chainId: String

        /// 区块高度
        public let blockHeight: Int64

        public init(clusterId: String, chainId: String, blockHeight: Int64) {
            self.clusterId = clusterId
            self.chainId = chainId
            self.blockHeight = blockHeight
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case chainId = "ChainId"
            case blockHeight = "BlockHeight"
        }
    }

    /// QueryChainMakerDemoBlockTransaction返回参数结构体
    public struct QueryChainMakerDemoBlockTransactionResponse: TCResponse {
        /// 区块交易
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [ChainMakerTransactionResult]?

        /// 区块高度
        public let blockHeight: Int64

        /// 交易数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let txCount: Int64?

        /// 区块时间戳，单位是秒
        public let blockTimestamp: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case blockHeight = "BlockHeight"
            case txCount = "TxCount"
            case blockTimestamp = "BlockTimestamp"
            case requestId = "RequestId"
        }
    }

    /// 查询长安链体验网络指定高度区块的交易
    @inlinable
    public func queryChainMakerDemoBlockTransaction(_ input: QueryChainMakerDemoBlockTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerDemoBlockTransactionResponse> {
        self.client.execute(action: "QueryChainMakerDemoBlockTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询长安链体验网络指定高度区块的交易
    @inlinable
    public func queryChainMakerDemoBlockTransaction(_ input: QueryChainMakerDemoBlockTransactionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerDemoBlockTransactionResponse {
        try await self.client.execute(action: "QueryChainMakerDemoBlockTransaction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询长安链体验网络指定高度区块的交易
    @inlinable
    public func queryChainMakerDemoBlockTransaction(clusterId: String, chainId: String, blockHeight: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryChainMakerDemoBlockTransactionResponse> {
        self.queryChainMakerDemoBlockTransaction(.init(clusterId: clusterId, chainId: chainId, blockHeight: blockHeight), region: region, logger: logger, on: eventLoop)
    }

    /// 查询长安链体验网络指定高度区块的交易
    @inlinable
    public func queryChainMakerDemoBlockTransaction(clusterId: String, chainId: String, blockHeight: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryChainMakerDemoBlockTransactionResponse {
        try await self.queryChainMakerDemoBlockTransaction(.init(clusterId: clusterId, chainId: chainId, blockHeight: blockHeight), region: region, logger: logger, on: eventLoop)
    }
}
