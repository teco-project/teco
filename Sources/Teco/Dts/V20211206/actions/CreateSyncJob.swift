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

extension Dts {
    /// CreateSyncJob请求参数结构体
    public struct CreateSyncJobRequest: TCRequestModel {
        /// 付款类型, 如：PrePay(表示包年包月)、PostPay(表示按时按量)
        public let payMode: String
        
        /// 源端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        public let srcDatabaseType: String
        
        /// 源端数据库所在地域,如ap-guangzhou
        public let srcRegion: String
        
        /// 目标端数据库类型,如mysql,cynosdbmysql,tdapg,tdpg,tdsqlmysql等
        public let dstDatabaseType: String
        
        /// 目标端数据库所在地域,如ap-guangzhou
        public let dstRegion: String
        
        /// 同步任务规格，Standard:标准版
        public let specification: String?
        
        /// 标签信息
        public let tags: [TagItem]?
        
        /// 一次购买的同步任务数量，取值范围为[1, 10]，默认为1
        public let count: UInt64?
        
        /// 自动续费标识，当PayMode值为PrePay则此项配置有意义，取值为：1（表示自动续费）、0（不自动续费，默认为此值）
        public let autoRenew: UInt64?
        
        /// 同步链路规格，如micro,small,medium,large，默认为medium
        public let instanceClass: String?
        
        /// 同步任务名称
        public let jobName: String?
        
        /// 创建类似任务的现有任务Id
        public let existedJobId: String?
        
        public init (payMode: String, srcDatabaseType: String, srcRegion: String, dstDatabaseType: String, dstRegion: String, specification: String? = nil, tags: [TagItem]? = nil, count: UInt64? = nil, autoRenew: UInt64? = nil, instanceClass: String? = nil, jobName: String? = nil, existedJobId: String? = nil) {
            self.payMode = payMode
            self.srcDatabaseType = srcDatabaseType
            self.srcRegion = srcRegion
            self.dstDatabaseType = dstDatabaseType
            self.dstRegion = dstRegion
            self.specification = specification
            self.tags = tags
            self.count = count
            self.autoRenew = autoRenew
            self.instanceClass = instanceClass
            self.jobName = jobName
            self.existedJobId = existedJobId
        }
        
        enum CodingKeys: String, CodingKey {
            case payMode = "PayMode"
            case srcDatabaseType = "SrcDatabaseType"
            case srcRegion = "SrcRegion"
            case dstDatabaseType = "DstDatabaseType"
            case dstRegion = "DstRegion"
            case specification = "Specification"
            case tags = "Tags"
            case count = "Count"
            case autoRenew = "AutoRenew"
            case instanceClass = "InstanceClass"
            case jobName = "JobName"
            case existedJobId = "ExistedJobId"
        }
    }
    
    /// CreateSyncJob返回参数结构体
    public struct CreateSyncJobResponse: TCResponseModel {
        /// 同步任务ids
        public let jobIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case requestId = "RequestId"
        }
    }
    
    /// 创建同步任务
    ///
    /// 创建一个同步任务
    @inlinable
    public func createSyncJob(_ input: CreateSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSyncJobResponse > {
        self.client.execute(action: "CreateSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建同步任务
    ///
    /// 创建一个同步任务
    @inlinable
    public func createSyncJob(_ input: CreateSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSyncJobResponse {
        try await self.client.execute(action: "CreateSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
