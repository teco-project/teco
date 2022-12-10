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

extension Cfw {
    /// 资产扫描
    @inlinable
    public func modifyAssetScan(_ input: ModifyAssetScanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAssetScanResponse > {
        self.client.execute(action: "ModifyAssetScan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 资产扫描
    @inlinable
    public func modifyAssetScan(_ input: ModifyAssetScanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssetScanResponse {
        try await self.client.execute(action: "ModifyAssetScan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAssetScan请求参数结构体
    public struct ModifyAssetScanRequest: TCRequestModel {
        /// 扫描范围：1端口, 2端口+漏扫
        public let scanRange: Int64
        
        /// 扫描深度：'heavy', 'medium', 'light'
        public let scanDeep: String
        
        /// 扫描类型：1立即扫描 2 周期任务
        public let rangeType: Int64
        
        /// RangeType为2 是必须添加，定时任务时间
        public let scanPeriod: String?
        
        /// 立即扫描这个字段传过滤的扫描集合
        public let scanFilterIp: [String]?
        
        /// 1全量2单个
        public let scanType: Int64?
        
        public init (scanRange: Int64, scanDeep: String, rangeType: Int64, scanPeriod: String?, scanFilterIp: [String]?, scanType: Int64?) {
            self.scanRange = scanRange
            self.scanDeep = scanDeep
            self.rangeType = rangeType
            self.scanPeriod = scanPeriod
            self.scanFilterIp = scanFilterIp
            self.scanType = scanType
        }
        
        enum CodingKeys: String, CodingKey {
            case scanRange = "ScanRange"
            case scanDeep = "ScanDeep"
            case rangeType = "RangeType"
            case scanPeriod = "ScanPeriod"
            case scanFilterIp = "ScanFilterIp"
            case scanType = "ScanType"
        }
    }
    
    /// ModifyAssetScan返回参数结构体
    public struct ModifyAssetScanResponse: TCResponseModel {
        /// 接口返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?
        
        /// 接口返回错误码，0请求成功  非0失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnCode: Int64?
        
        /// 状态值 0：成功，1 执行扫描中,其他：失败
        public let status: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case returnMsg = "ReturnMsg"
            case returnCode = "ReturnCode"
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}
