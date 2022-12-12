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

extension Sqlserver {
    /// CreateBusinessIntelligenceFile请求参数结构体
    public struct CreateBusinessIntelligenceFileRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// COS_URL
        public let fileURL: String
        
        /// 文件类型 FLAT-作为数据源的平面文件， SSIS-ssis项目包
        public let fileType: String
        
        /// 备注
        public let remark: String?
        
        public init (instanceId: String, fileURL: String, fileType: String, remark: String? = nil) {
            self.instanceId = instanceId
            self.fileURL = fileURL
            self.fileType = fileType
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case fileURL = "FileURL"
            case fileType = "FileType"
            case remark = "Remark"
        }
    }
    
    /// CreateBusinessIntelligenceFile返回参数结构体
    public struct CreateBusinessIntelligenceFileResponse: TCResponseModel {
        /// 文件名称
        public let fileTaskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileTaskId = "FileTaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建商业智能服务文件
    ///
    /// 本接口（CreateBusinessIntelligenceFile）用于添加商业智能服务文件。
    @inlinable
    public func createBusinessIntelligenceFile(_ input: CreateBusinessIntelligenceFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBusinessIntelligenceFileResponse > {
        self.client.execute(action: "CreateBusinessIntelligenceFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建商业智能服务文件
    ///
    /// 本接口（CreateBusinessIntelligenceFile）用于添加商业智能服务文件。
    @inlinable
    public func createBusinessIntelligenceFile(_ input: CreateBusinessIntelligenceFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBusinessIntelligenceFileResponse {
        try await self.client.execute(action: "CreateBusinessIntelligenceFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
