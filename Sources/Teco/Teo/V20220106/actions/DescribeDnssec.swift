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

extension Teo {
    /// DescribeDnssec请求参数结构体
    public struct DescribeDnssecRequest: TCRequestModel {
        /// 站点 ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeDnssec返回参数结构体
    public struct DescribeDnssecResponse: TCResponseModel {
        /// 站点 ID
        public let id: String

        /// 站点名称
        public let name: String

        /// DNSSEC 状态
        /// - enabled 开启
        /// - disabled 关闭
        public let status: String

        /// DNSSEC 相关信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dnssec: DnssecInfo?

        /// 修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case status = "Status"
            case dnssec = "Dnssec"
            case modifiedOn = "ModifiedOn"
            case requestId = "RequestId"
        }
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(_ input: DescribeDnssecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnssecResponse> {
        self.client.execute(action: "DescribeDnssec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(_ input: DescribeDnssecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnssecResponse {
        try await self.client.execute(action: "DescribeDnssec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDnssecResponse> {
        let input = DescribeDnssecRequest(id: id)
        return self.client.execute(action: "DescribeDnssec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DNSSEC 信息
    ///
    /// 用于查询 DNSSEC 相关信息
    @inlinable
    public func describeDnssec(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnssecResponse {
        let input = DescribeDnssecRequest(id: id)
        return try await self.client.execute(action: "DescribeDnssec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
