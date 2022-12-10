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
    /// 查询虚拟机部署组详情
    ///
    /// 查询虚拟机部署组详情
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupResponse > {
        self.client.execute(action: "DescribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询虚拟机部署组详情
    ///
    /// 查询虚拟机部署组详情
    @inlinable
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        try await self.client.execute(action: "DescribeGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroup请求参数结构体
    public struct DescribeGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// DescribeGroup返回参数结构体
    public struct DescribeGroupResponse: TCResponseModel {
        /// 虚拟机部署组详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: VmGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}