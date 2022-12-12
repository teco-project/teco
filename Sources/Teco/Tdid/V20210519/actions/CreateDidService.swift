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

extension Tdid {
    /// CreateDidService请求参数结构体
    public struct CreateDidServiceRequest: TCRequestModel {
        /// 联盟名称
        public let consortiumName: String
        
        /// 联盟ID
        public let consortiumId: Int64
        
        /// 群组ID
        public let groupId: Int64
        
        /// 机构名称
        public let agencyName: String
        
        /// 应用名称
        public let appName: String
        
        /// 网络ID
        public let clusterId: String
        
        /// 群组名称
        public let groupName: String
        
        public init (consortiumName: String, consortiumId: Int64, groupId: Int64, agencyName: String, appName: String, clusterId: String, groupName: String) {
            self.consortiumName = consortiumName
            self.consortiumId = consortiumId
            self.groupId = groupId
            self.agencyName = agencyName
            self.appName = appName
            self.clusterId = clusterId
            self.groupName = groupName
        }
        
        enum CodingKeys: String, CodingKey {
            case consortiumName = "ConsortiumName"
            case consortiumId = "ConsortiumId"
            case groupId = "GroupId"
            case agencyName = "AgencyName"
            case appName = "AppName"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
        }
    }
    
    /// CreateDidService返回参数结构体
    public struct CreateDidServiceResponse: TCResponseModel {
        /// 服务信息
        public let task: Task
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case task = "Task"
            case requestId = "RequestId"
        }
    }
    
    /// 创建DID服务
    @inlinable
    public func createDidService(_ input: CreateDidServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDidServiceResponse > {
        self.client.execute(action: "CreateDidService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建DID服务
    @inlinable
    public func createDidService(_ input: CreateDidServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDidServiceResponse {
        try await self.client.execute(action: "CreateDidService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
