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

extension Tsf {
    /// DescribeSimpleApplications请求参数结构体
    public struct DescribeSimpleApplicationsRequest: TCRequestModel {
        /// 应用ID列表
        public let applicationIdList: [String]?

        /// 应用类型
        public let applicationType: String?

        /// 每页条数
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        /// 微服务类型
        public let microserviceType: String?

        /// 资源类型数组
        public let applicationResourceTypeList: [String]?

        /// 通过id和name进行关键词过滤
        public let searchWord: String?

        /// 无
        public let disableProgramAuthCheck: Bool?

        public init(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil) {
            self.applicationIdList = applicationIdList
            self.applicationType = applicationType
            self.limit = limit
            self.offset = offset
            self.microserviceType = microserviceType
            self.applicationResourceTypeList = applicationResourceTypeList
            self.searchWord = searchWord
            self.disableProgramAuthCheck = disableProgramAuthCheck
        }

        enum CodingKeys: String, CodingKey {
            case applicationIdList = "ApplicationIdList"
            case applicationType = "ApplicationType"
            case limit = "Limit"
            case offset = "Offset"
            case microserviceType = "MicroserviceType"
            case applicationResourceTypeList = "ApplicationResourceTypeList"
            case searchWord = "SearchWord"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
        }
    }

    /// DescribeSimpleApplications返回参数结构体
    public struct DescribeSimpleApplicationsResponse: TCResponseModel {
        /// 简单应用分页对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageSimpleApplication?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleApplicationsResponse> {
        self.client.execute(action: "DescribeSimpleApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleApplicationsResponse {
        try await self.client.execute(action: "DescribeSimpleApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleApplicationsResponse> {
        self.describeSimpleApplications(DescribeSimpleApplicationsRequest(applicationIdList: applicationIdList, applicationType: applicationType, limit: limit, offset: offset, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleApplicationsResponse {
        try await self.describeSimpleApplications(DescribeSimpleApplicationsRequest(applicationIdList: applicationIdList, applicationType: applicationType, limit: limit, offset: offset, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }
}
