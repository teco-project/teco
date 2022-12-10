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
    /// 权威机构列表
    @inlinable
    public func getAuthoritiesList(_ input: GetAuthoritiesListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAuthoritiesListResponse > {
        self.client.execute(action: "GetAuthoritiesList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 权威机构列表
    @inlinable
    public func getAuthoritiesList(_ input: GetAuthoritiesListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthoritiesListResponse {
        try await self.client.execute(action: "GetAuthoritiesList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetAuthoritiesList请求参数结构体
    public struct GetAuthoritiesListRequest: TCRequestModel {
        /// 页码，从1开始
        public let pageNumber: Int64
        
        /// 每页大小
        public let pageSize: Int64
        
        /// Did信息
        public let did: String?
        
        /// 权威认证 1:已认证，2:未认证
        public let status: Int64?
        
        public init (pageNumber: Int64, pageSize: Int64, did: String?, status: Int64?) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.did = did
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case did = "Did"
            case status = "Status"
        }
    }
    
    /// GetAuthoritiesList返回参数结构体
    public struct GetAuthoritiesListResponse: TCResponseModel {
        /// 数据集合
        public let resultList: [Authority]
        
        /// 总数
        public let allCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resultList = "ResultList"
            case allCount = "AllCount"
            case requestId = "RequestId"
        }
    }
}
