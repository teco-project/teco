//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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

extension Teo {
    /// DescribeDnssec请求参数结构体
    public struct DescribeDnssecRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        public init(zoneId: String) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeDnssec返回参数结构体
    public struct DescribeDnssecResponse: TCResponseModel {
        /// DNSSEC状态信息，取值有：
        /// <li>enabled：开启；</li>
        /// <li>disabled：关闭。</li>
        public let status: String

        /// DNSSEC相关信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dnssecInfo: DnssecInfo?

        /// 站点信息更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case dnssecInfo = "DnssecInfo"
            case modifiedOn = "ModifiedOn"
            case requestId = "RequestId"
        }
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(_ input: DescribeDnssecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnssecResponse> {
        self.client.execute(action: "DescribeDnssec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(_ input: DescribeDnssecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnssecResponse {
        try await self.client.execute(action: "DescribeDnssec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(zoneId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnssecResponse> {
        self.describeDnssec(DescribeDnssecRequest(zoneId: zoneId), logger: logger, on: eventLoop)
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(zoneId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnssecResponse {
        try await self.describeDnssec(DescribeDnssecRequest(zoneId: zoneId), logger: logger, on: eventLoop)
    }
}
