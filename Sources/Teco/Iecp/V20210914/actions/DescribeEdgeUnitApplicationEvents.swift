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

extension Iecp {
    /// 获取应用事件列表
    ///
    /// 获取应用事件列表
    @inlinable
    public func describeEdgeUnitApplicationEvents(_ input: DescribeEdgeUnitApplicationEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitApplicationEventsResponse > {
        self.client.execute(action: "DescribeEdgeUnitApplicationEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取应用事件列表
    ///
    /// 获取应用事件列表
    @inlinable
    public func describeEdgeUnitApplicationEvents(_ input: DescribeEdgeUnitApplicationEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitApplicationEventsResponse {
        try await self.client.execute(action: "DescribeEdgeUnitApplicationEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEdgeUnitApplicationEvents请求参数结构体
    public struct DescribeEdgeUnitApplicationEventsRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitId: UInt64
        
        /// 应用ID
        public let applicationId: UInt64
        
        public init (edgeUnitId: UInt64, applicationId: UInt64) {
            self.edgeUnitId = edgeUnitId
            self.applicationId = applicationId
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case applicationId = "ApplicationId"
        }
    }
    
    /// DescribeEdgeUnitApplicationEvents返回参数结构体
    public struct DescribeEdgeUnitApplicationEventsResponse: TCResponseModel {
        /// 事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventSet: [Event]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case eventSet = "EventSet"
            case requestId = "RequestId"
        }
    }
}