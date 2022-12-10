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
    /// 添加容器安全镜像扫描设置
    @inlinable
    public func createAssetImageScanSetting(_ input: CreateAssetImageScanSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAssetImageScanSettingResponse > {
        self.client.execute(action: "CreateAssetImageScanSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加容器安全镜像扫描设置
    @inlinable
    public func createAssetImageScanSetting(_ input: CreateAssetImageScanSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetImageScanSettingResponse {
        try await self.client.execute(action: "CreateAssetImageScanSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAssetImageScanSetting请求参数结构体
    public struct CreateAssetImageScanSettingRequest: TCRequestModel {
        /// 开关
        public let enable: Bool
        
        /// 扫描时间
        public let scanTime: String
        
        /// 扫描周期
        public let scanPeriod: UInt64
        
        /// 扫描木马
        public let scanVirus: Bool
        
        /// 扫描敏感信息
        public let scanRisk: Bool
        
        /// 扫描漏洞
        public let scanVul: Bool
        
        /// 全部镜像
        public let all: Bool
        
        /// 自定义镜像
        public let images: [String]?
        
        public init (enable: Bool, scanTime: String, scanPeriod: UInt64, scanVirus: Bool, scanRisk: Bool, scanVul: Bool, all: Bool, images: [String]?) {
            self.enable = enable
            self.scanTime = scanTime
            self.scanPeriod = scanPeriod
            self.scanVirus = scanVirus
            self.scanRisk = scanRisk
            self.scanVul = scanVul
            self.all = all
            self.images = images
        }
        
        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case scanTime = "ScanTime"
            case scanPeriod = "ScanPeriod"
            case scanVirus = "ScanVirus"
            case scanRisk = "ScanRisk"
            case scanVul = "ScanVul"
            case all = "All"
            case images = "Images"
        }
    }
    
    /// CreateAssetImageScanSetting返回参数结构体
    public struct CreateAssetImageScanSettingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
