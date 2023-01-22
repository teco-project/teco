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
    /// DescribeTactics请求参数结构体
    public struct DescribeTacticsRequest: TCRequestModel {
        /// 策略ID
        public let tacticID: Int64?

        /// 策略名称
        public let name: String?

        public init(tacticID: Int64? = nil, name: String? = nil) {
            self.tacticID = tacticID
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case tacticID = "TacticID"
            case name = "Name"
        }
    }

    /// DescribeTactics返回参数结构体
    public struct DescribeTacticsResponse: TCResponseModel {
        /// 策略集合信息
        public let data: TacticInfos

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询云兔切换策略列表
    @inlinable
    public func describeTactics(_ input: DescribeTacticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTacticsResponse> {
        self.client.execute(action: "DescribeTactics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云兔切换策略列表
    @inlinable
    public func describeTactics(_ input: DescribeTacticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTacticsResponse {
        try await self.client.execute(action: "DescribeTactics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云兔切换策略列表
    @inlinable
    public func describeTactics(tacticID: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTacticsResponse> {
        self.describeTactics(DescribeTacticsRequest(tacticID: tacticID, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云兔切换策略列表
    @inlinable
    public func describeTactics(tacticID: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTacticsResponse {
        try await self.describeTactics(DescribeTacticsRequest(tacticID: tacticID, name: name), region: region, logger: logger, on: eventLoop)
    }
}
