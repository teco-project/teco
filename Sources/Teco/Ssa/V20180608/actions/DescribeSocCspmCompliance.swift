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

extension Ssa {
    /// DescribeSocCspmCompliance请求参数结构体
    public struct DescribeSocCspmComplianceRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeSocCspmCompliance返回参数结构体
    public struct DescribeSocCspmComplianceResponse: TCResponse {
        /// 数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: SocComplianceInfoResp?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 合规详情
    ///
    /// 合规详情项
    @inlinable
    public func describeSocCspmCompliance(_ input: DescribeSocCspmComplianceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocCspmComplianceResponse> {
        self.client.execute(action: "DescribeSocCspmCompliance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合规详情
    ///
    /// 合规详情项
    @inlinable
    public func describeSocCspmCompliance(_ input: DescribeSocCspmComplianceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocCspmComplianceResponse {
        try await self.client.execute(action: "DescribeSocCspmCompliance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合规详情
    ///
    /// 合规详情项
    @inlinable
    public func describeSocCspmCompliance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocCspmComplianceResponse> {
        self.describeSocCspmCompliance(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 合规详情
    ///
    /// 合规详情项
    @inlinable
    public func describeSocCspmCompliance(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocCspmComplianceResponse {
        try await self.describeSocCspmCompliance(.init(), region: region, logger: logger, on: eventLoop)
    }
}
