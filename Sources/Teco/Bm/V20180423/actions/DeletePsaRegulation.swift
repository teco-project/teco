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

extension Bm {
    /// DeletePsaRegulation请求参数结构体
    public struct DeletePsaRegulationRequest: TCRequestModel {
        /// 预授权规则ID
        public let psaId: String

        public init(psaId: String) {
            self.psaId = psaId
        }

        enum CodingKeys: String, CodingKey {
            case psaId = "PsaId"
        }
    }

    /// DeletePsaRegulation返回参数结构体
    public struct DeletePsaRegulationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除预授权规则
    @inlinable @discardableResult
    public func deletePsaRegulation(_ input: DeletePsaRegulationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePsaRegulationResponse> {
        self.client.execute(action: "DeletePsaRegulation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除预授权规则
    @inlinable @discardableResult
    public func deletePsaRegulation(_ input: DeletePsaRegulationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePsaRegulationResponse {
        try await self.client.execute(action: "DeletePsaRegulation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除预授权规则
    @inlinable @discardableResult
    public func deletePsaRegulation(psaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePsaRegulationResponse> {
        self.deletePsaRegulation(DeletePsaRegulationRequest(psaId: psaId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除预授权规则
    @inlinable @discardableResult
    public func deletePsaRegulation(psaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePsaRegulationResponse {
        try await self.deletePsaRegulation(DeletePsaRegulationRequest(psaId: psaId), region: region, logger: logger, on: eventLoop)
    }
}
