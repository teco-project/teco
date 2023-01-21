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

extension Tcss {
    /// DescribeVirusScanTimeoutSetting请求参数结构体
    public struct DescribeVirusScanTimeoutSettingRequest: TCRequestModel {
        /// 设置类型0一键检测，1定时检测
        public let scanType: UInt64

        public init(scanType: UInt64) {
            self.scanType = scanType
        }

        enum CodingKeys: String, CodingKey {
            case scanType = "ScanType"
        }
    }

    /// DescribeVirusScanTimeoutSetting返回参数结构体
    public struct DescribeVirusScanTimeoutSettingResponse: TCResponseModel {
        /// 超时时长单位小时
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeout: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case timeout = "Timeout"
            case requestId = "RequestId"
        }
    }

    /// 运行时文件扫描超时设置查询
    @inlinable
    public func describeVirusScanTimeoutSetting(_ input: DescribeVirusScanTimeoutSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusScanTimeoutSettingResponse> {
        self.client.execute(action: "DescribeVirusScanTimeoutSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时文件扫描超时设置查询
    @inlinable
    public func describeVirusScanTimeoutSetting(_ input: DescribeVirusScanTimeoutSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusScanTimeoutSettingResponse {
        try await self.client.execute(action: "DescribeVirusScanTimeoutSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时文件扫描超时设置查询
    @inlinable
    public func describeVirusScanTimeoutSetting(scanType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusScanTimeoutSettingResponse> {
        self.describeVirusScanTimeoutSetting(DescribeVirusScanTimeoutSettingRequest(scanType: scanType), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时文件扫描超时设置查询
    @inlinable
    public func describeVirusScanTimeoutSetting(scanType: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusScanTimeoutSettingResponse {
        try await self.describeVirusScanTimeoutSetting(DescribeVirusScanTimeoutSettingRequest(scanType: scanType), region: region, logger: logger, on: eventLoop)
    }
}
