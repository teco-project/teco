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

extension Iotvideo {
    /// DescribeRunLog请求参数结构体
    public struct DescribeRunLogRequest: TCRequestModel {
        /// 设备TID
        public let tid: String

        public init(tid: String) {
            self.tid = tid
        }

        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
        }
    }

    /// DescribeRunLog返回参数结构体
    public struct DescribeRunLogResponse: TCResponseModel {
        /// 设备运行日志文本信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取设备运行日志
    ///
    /// 本接口（DescribeRunLog）用于获取设备运行日志。
    @inlinable
    public func describeRunLog(_ input: DescribeRunLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRunLogResponse> {
        self.client.execute(action: "DescribeRunLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备运行日志
    ///
    /// 本接口（DescribeRunLog）用于获取设备运行日志。
    @inlinable
    public func describeRunLog(_ input: DescribeRunLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRunLogResponse {
        try await self.client.execute(action: "DescribeRunLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备运行日志
    ///
    /// 本接口（DescribeRunLog）用于获取设备运行日志。
    @inlinable
    public func describeRunLog(tid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRunLogResponse> {
        let input = DescribeRunLogRequest(tid: tid)
        return self.client.execute(action: "DescribeRunLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备运行日志
    ///
    /// 本接口（DescribeRunLog）用于获取设备运行日志。
    @inlinable
    public func describeRunLog(tid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRunLogResponse {
        let input = DescribeRunLogRequest(tid: tid)
        return try await self.client.execute(action: "DescribeRunLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
