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

extension Tcss {
    /// DescribeSecLogKafkaUIN请求参数结构体
    public struct DescribeSecLogKafkaUINRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSecLogKafkaUIN返回参数结构体
    public struct DescribeSecLogKafkaUINResponse: TCResponseModel {
        /// 目标UIN
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dstUIN: String?

        /// 授权状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dstUIN = "DstUIN"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询安全日志KafkaUIN
    @inlinable
    public func describeSecLogKafkaUIN(_ input: DescribeSecLogKafkaUINRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogKafkaUINResponse> {
        self.client.execute(action: "DescribeSecLogKafkaUIN", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询安全日志KafkaUIN
    @inlinable
    public func describeSecLogKafkaUIN(_ input: DescribeSecLogKafkaUINRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogKafkaUINResponse {
        try await self.client.execute(action: "DescribeSecLogKafkaUIN", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询安全日志KafkaUIN
    @inlinable
    public func describeSecLogKafkaUIN(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecLogKafkaUINResponse> {
        self.describeSecLogKafkaUIN(DescribeSecLogKafkaUINRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询安全日志KafkaUIN
    @inlinable
    public func describeSecLogKafkaUIN(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogKafkaUINResponse {
        try await self.describeSecLogKafkaUIN(DescribeSecLogKafkaUINRequest(), region: region, logger: logger, on: eventLoop)
    }
}
