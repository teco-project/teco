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

extension Tsf {
    /// 查询部署组发布信息
    ///
    /// 查询部署组相关的发布信息
    @inlinable
    public func describeGroupRelease(_ input: DescribeGroupReleaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupReleaseResponse > {
        self.client.execute(action: "DescribeGroupRelease", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询部署组发布信息
    ///
    /// 查询部署组相关的发布信息
    @inlinable
    public func describeGroupRelease(_ input: DescribeGroupReleaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupReleaseResponse {
        try await self.client.execute(action: "DescribeGroupRelease", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroupRelease请求参数结构体
    public struct DescribeGroupReleaseRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// DescribeGroupRelease返回参数结构体
    public struct DescribeGroupReleaseResponse: TCResponseModel {
        /// 部署组发布的相关信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: GroupRelease
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
