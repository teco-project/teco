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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cpdp {
    /// QueryAgentStatements请求参数结构体
    public struct QueryAgentStatementsRequest: TCRequestModel {
        /// 结算单日期，月结算单填每月1日
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var date: Date

        /// 日结算单:daily
        /// 月结算单:monthly
        public let type: String

        public init(date: Date, type: String) {
            self._date = .init(wrappedValue: date)
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case type = "Type"
        }
    }

    /// QueryAgentStatements返回参数结构体
    public struct QueryAgentStatementsResponse: TCResponseModel {
        /// 文件下载链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileUrl = "FileUrl"
            case requestId = "RequestId"
        }
    }

    /// 直播平台-查询代理商结算单链接
    @inlinable
    public func queryAgentStatements(_ input: QueryAgentStatementsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAgentStatementsResponse> {
        self.client.execute(action: "QueryAgentStatements", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-查询代理商结算单链接
    @inlinable
    public func queryAgentStatements(_ input: QueryAgentStatementsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAgentStatementsResponse {
        try await self.client.execute(action: "QueryAgentStatements", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播平台-查询代理商结算单链接
    @inlinable
    public func queryAgentStatements(date: Date, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAgentStatementsResponse> {
        self.queryAgentStatements(.init(date: date, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 直播平台-查询代理商结算单链接
    @inlinable
    public func queryAgentStatements(date: Date, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAgentStatementsResponse {
        try await self.queryAgentStatements(.init(date: date, type: type), region: region, logger: logger, on: eventLoop)
    }
}
