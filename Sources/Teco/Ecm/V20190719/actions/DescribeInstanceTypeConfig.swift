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

extension Ecm {
    /// 获取机型配置列表
    ///
    /// 获取机型配置列表
    @inlinable
    public func describeInstanceTypeConfig(_ input: DescribeInstanceTypeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceTypeConfigResponse > {
        self.client.execute(action: "DescribeInstanceTypeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取机型配置列表
    ///
    /// 获取机型配置列表
    @inlinable
    public func describeInstanceTypeConfig(_ input: DescribeInstanceTypeConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypeConfigResponse {
        try await self.client.execute(action: "DescribeInstanceTypeConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceTypeConfig请求参数结构体
    public struct DescribeInstanceTypeConfigRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeInstanceTypeConfig返回参数结构体
    public struct DescribeInstanceTypeConfigResponse: TCResponseModel {
        /// 总数
        public let totalCount: Int64
        
        /// 机型配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceTypeConfigSet: [InstanceTypeConfig]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceTypeConfigSet = "InstanceTypeConfigSet"
            case requestId = "RequestId"
        }
    }
}