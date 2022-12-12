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
    /// DescribeVulImageList请求参数结构体
    public struct DescribeVulImageListRequest: TCRequestModel {
        /// 漏洞PocID
        public let pocID: String
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>OnlyAffectedNewestImage- Bool- 是否必填：否 - 仅展示影响最新版本镜像的漏洞</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID</li>
        /// <li>ImageName- String -是否必填: 否 - 镜像名称</li>
        /// <li>HostIP- string -是否必填: 否 - 内网IP</li>
        /// <li>PublicIP- string -是否必填: 否 - 外网IP</li>
        /// <li>ComponentName- string -是否必填: 否 - 组件名称</li>
        /// <li>ComponentVersion- string -是否必填: 否 - 组件版本</li>
        /// <li>HostName- string -是否必填: 否 - 主机名称</li>
        public let filters: [RunTimeFilters]?
        
        /// 排序方式
        public let order: String?
        
        /// 排序字段
        public let by: String?
        
        public init (pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.pocID = pocID
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeVulImageList返回参数结构体
    public struct DescribeVulImageListResponse: TCResponseModel {
        /// 受影响的镜像列表
        public let list: [VulAffectedImageInfo]
        
        /// 镜像总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询漏洞影响的镜像列表
    @inlinable
    public func describeVulImageList(_ input: DescribeVulImageListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVulImageListResponse > {
        self.client.execute(action: "DescribeVulImageList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询漏洞影响的镜像列表
    @inlinable
    public func describeVulImageList(_ input: DescribeVulImageListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulImageListResponse {
        try await self.client.execute(action: "DescribeVulImageList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
