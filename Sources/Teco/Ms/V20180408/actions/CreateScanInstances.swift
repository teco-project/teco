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

extension Ms {
    /// CreateScanInstances请求参数结构体
    public struct CreateScanInstancesRequest: TCRequestModel {
        /// 待扫描的app信息列表，一次最多提交20个
        public let appInfos: [AppInfo]
        
        /// 扫描信息
        public let scanInfo: ScanInfo
        
        public init (appInfos: [AppInfo], scanInfo: ScanInfo) {
            self.appInfos = appInfos
            self.scanInfo = scanInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case appInfos = "AppInfos"
            case scanInfo = "ScanInfo"
        }
    }
    
    /// CreateScanInstances返回参数结构体
    public struct CreateScanInstancesResponse: TCResponseModel {
        /// 任务唯一标识
        public let itemId: String
        
        /// 任务状态: 1-已完成,2-处理中,3-处理出错,4-处理超时
        public let progress: UInt64
        
        /// 提交成功的app的md5集合
        public let appMd5s: [String]
        
        /// 剩余可用次数
        public let limitCount: UInt64
        
        /// 到期时间
        public let limitTime: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case progress = "Progress"
            case appMd5s = "AppMd5s"
            case limitCount = "LimitCount"
            case limitTime = "LimitTime"
            case requestId = "RequestId"
        }
    }
    
    /// 批量提交安全扫描
    ///
    /// 用户通过该接口批量提交应用进行应用扫描，扫描后需通过DescribeScanResults接口查询扫描结果
    @inlinable
    public func createScanInstances(_ input: CreateScanInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateScanInstancesResponse > {
        self.client.execute(action: "CreateScanInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量提交安全扫描
    ///
    /// 用户通过该接口批量提交应用进行应用扫描，扫描后需通过DescribeScanResults接口查询扫描结果
    @inlinable
    public func createScanInstances(_ input: CreateScanInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScanInstancesResponse {
        try await self.client.execute(action: "CreateScanInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
