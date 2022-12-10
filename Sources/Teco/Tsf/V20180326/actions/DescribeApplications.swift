//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// 获取应用列表
    ///
    /// 获取应用列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationsResponse > {
        self.client.execute(action: "DescribeApplications", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取应用列表
    ///
    /// 获取应用列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCRequestModel {
        /// 搜索字段
        public let searchWord: String?
        
        /// 排序字段
        public let orderBy: String?
        
        /// 排序类型
        public let orderType: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        /// 分页个数
        public let limit: Int64?
        
        /// 应用类型
        public let applicationType: String?
        
        /// 应用的微服务类型
        public let microserviceType: String?
        
        /// 应用资源类型数组
        public let applicationResourceTypeList: [String]?
        
        /// IdList
        public let applicationIdList: [String]?
        
        public init (searchWord: String?, orderBy: String?, orderType: Int64?, offset: Int64?, limit: Int64?, applicationType: String?, microserviceType: String?, applicationResourceTypeList: [String]?, applicationIdList: [String]?) {
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.applicationType = applicationType
            self.microserviceType = microserviceType
            self.applicationResourceTypeList = applicationResourceTypeList
            self.applicationIdList = applicationIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case applicationType = "ApplicationType"
            case microserviceType = "MicroserviceType"
            case applicationResourceTypeList = "ApplicationResourceTypeList"
            case applicationIdList = "ApplicationIdList"
        }
    }
    
    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCResponseModel {
        /// 应用分页列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageApplication
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}