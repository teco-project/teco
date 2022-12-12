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

extension Tcss {
    /// DescribeVirusMonitorSetting请求参数结构体
    public struct DescribeVirusMonitorSettingRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeVirusMonitorSetting返回参数结构体
    public struct DescribeVirusMonitorSettingResponse: TCResponseModel {
        /// 是否开启实时监控
        public let enableScan: Bool
        
        /// 扫描全部路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanPathAll: Bool?
        
        /// 当ScanPathAll为true 生效 0扫描以下路径 1、扫描除以下路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanPathType: UInt64?
        
        /// 自选排除或扫描的地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanPath: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case enableScan = "EnableScan"
            case scanPathAll = "ScanPathAll"
            case scanPathType = "ScanPathType"
            case scanPath = "ScanPath"
            case requestId = "RequestId"
        }
    }
    
    /// 运行时查询文件查杀实时监控设置
    @inlinable
    public func describeVirusMonitorSetting(_ input: DescribeVirusMonitorSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVirusMonitorSettingResponse > {
        self.client.execute(action: "DescribeVirusMonitorSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时查询文件查杀实时监控设置
    @inlinable
    public func describeVirusMonitorSetting(_ input: DescribeVirusMonitorSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusMonitorSettingResponse {
        try await self.client.execute(action: "DescribeVirusMonitorSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
