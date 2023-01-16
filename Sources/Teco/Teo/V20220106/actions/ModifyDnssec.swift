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
    /// ModifyDnssec请求参数结构体
    public struct ModifyDnssecRequest: TCRequestModel {
        /// 站点 ID
        public let id: String

        /// DNSSEC 状态
        /// - enabled 开启
        /// - disabled 关闭
        public let status: String

        public init(id: String, status: String) {
            self.id = id
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case status = "Status"
        }
    }

    /// ModifyDnssec返回参数结构体
    public struct ModifyDnssecResponse: TCResponseModel {
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

    /// 修改 DNSSEC
    ///
    /// 修改 DNSSEC 状态
    @inlinable
    public func modifyDnssec(_ input: ModifyDnssecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDnssecResponse> {
        self.client.execute(action: "ModifyDnssec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 DNSSEC
    ///
    /// 修改 DNSSEC 状态
    @inlinable
    public func modifyDnssec(_ input: ModifyDnssecRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDnssecResponse {
        try await self.client.execute(action: "ModifyDnssec", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 DNSSEC
    ///
    /// 修改 DNSSEC 状态
    @inlinable
    public func modifyDnssec(id: String, status: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDnssecResponse> {
        self.modifyDnssec(ModifyDnssecRequest(id: id, status: status), logger: logger, on: eventLoop)
    }

    /// 修改 DNSSEC
    ///
    /// 修改 DNSSEC 状态
    @inlinable
    public func modifyDnssec(id: String, status: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDnssecResponse {
        try await self.modifyDnssec(ModifyDnssecRequest(id: id, status: status), logger: logger, on: eventLoop)
    }
}
