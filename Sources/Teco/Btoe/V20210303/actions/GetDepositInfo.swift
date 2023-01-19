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

extension Btoe {
    /// GetDepositInfo请求参数结构体
    public struct GetDepositInfoRequest: TCRequestModel {
        /// 存证编码
        public let evidenceId: String

        public init(evidenceId: String) {
            self.evidenceId = evidenceId
        }

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
        }
    }

    /// GetDepositInfo返回参数结构体
    public struct GetDepositInfoResponse: TCResponseModel {
        /// 存证编号
        public let evidenceId: String

        /// 上链时间
        public let evidenceTime: String

        /// 区块链交易哈希
        public let evidenceTxHash: String

        /// 区块高度
        public let blockchainHeight: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
            case evidenceTime = "EvidenceTime"
            case evidenceTxHash = "EvidenceTxHash"
            case blockchainHeight = "BlockchainHeight"
            case requestId = "RequestId"
        }
    }

    /// 存证基本信息查询
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过存证编码向BTOE查询存证基本信息。
    @inlinable
    public func getDepositInfo(_ input: GetDepositInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositInfoResponse> {
        self.client.execute(action: "GetDepositInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 存证基本信息查询
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过存证编码向BTOE查询存证基本信息。
    @inlinable
    public func getDepositInfo(_ input: GetDepositInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositInfoResponse {
        try await self.client.execute(action: "GetDepositInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 存证基本信息查询
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过存证编码向BTOE查询存证基本信息。
    @inlinable
    public func getDepositInfo(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositInfoResponse> {
        self.getDepositInfo(GetDepositInfoRequest(evidenceId: evidenceId), region: region, logger: logger, on: eventLoop)
    }

    /// 存证基本信息查询
    ///
    /// 功能迭代，已上线更高版本的接口2021-05-14
    /// 用户通过存证编码向BTOE查询存证基本信息。
    @inlinable
    public func getDepositInfo(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositInfoResponse {
        try await self.getDepositInfo(GetDepositInfoRequest(evidenceId: evidenceId), region: region, logger: logger, on: eventLoop)
    }
}
