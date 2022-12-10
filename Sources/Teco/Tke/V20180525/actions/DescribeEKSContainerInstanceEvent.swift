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

extension Tke {
    /// 查询容器实例的事件
    ///
    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(_ input: DescribeEKSContainerInstanceEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEKSContainerInstanceEventResponse > {
        self.client.execute(action: "DescribeEKSContainerInstanceEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器实例的事件
    ///
    /// 查询容器实例的事件
    @inlinable
    public func describeEKSContainerInstanceEvent(_ input: DescribeEKSContainerInstanceEventRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEKSContainerInstanceEventResponse {
        try await self.client.execute(action: "DescribeEKSContainerInstanceEvent", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEKSContainerInstanceEvent请求参数结构体
    public struct DescribeEKSContainerInstanceEventRequest: TCRequestModel {
        /// 容器实例id
        public let eksCiId: String
        
        /// 最大事件数量。默认为50，最大取值100。
        public let limit: Int64?
        
        public init (eksCiId: String, limit: Int64?) {
            self.eksCiId = eksCiId
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case eksCiId = "EksCiId"
            case limit = "Limit"
        }
    }
    
    /// DescribeEKSContainerInstanceEvent返回参数结构体
    public struct DescribeEKSContainerInstanceEventResponse: TCResponseModel {
        /// 事件集合
        public let events: [Event]
        
        /// 容器实例id
        public let eksCiId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case eksCiId = "EksCiId"
            case requestId = "RequestId"
        }
    }
}