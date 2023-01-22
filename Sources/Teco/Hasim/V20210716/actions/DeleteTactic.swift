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

extension Hasim {
    /// DeleteTactic请求参数结构体
    public struct DeleteTacticRequest: TCRequestModel {
        /// 策略ID
        public let tacticID: Int64

        public init(tacticID: Int64) {
            self.tacticID = tacticID
        }

        enum CodingKeys: String, CodingKey {
            case tacticID = "TacticID"
        }
    }

    /// DeleteTactic返回参数结构体
    public struct DeleteTacticResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除策略
    @inlinable @discardableResult
    public func deleteTactic(_ input: DeleteTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTacticResponse> {
        self.client.execute(action: "DeleteTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除策略
    @inlinable @discardableResult
    public func deleteTactic(_ input: DeleteTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTacticResponse {
        try await self.client.execute(action: "DeleteTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除策略
    @inlinable @discardableResult
    public func deleteTactic(tacticID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTacticResponse> {
        self.deleteTactic(DeleteTacticRequest(tacticID: tacticID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除策略
    @inlinable @discardableResult
    public func deleteTactic(tacticID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTacticResponse {
        try await self.deleteTactic(DeleteTacticRequest(tacticID: tacticID), region: region, logger: logger, on: eventLoop)
    }
}