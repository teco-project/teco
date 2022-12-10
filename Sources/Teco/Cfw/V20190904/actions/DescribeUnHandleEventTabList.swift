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

extension Cfw {
    /// 告警中心伪攻击链事件未处置接口
    ///
    /// DescribeUnHandleEventTabList 告警中心伪攻击链事件未处置接口
    @inlinable
    public func describeUnHandleEventTabList(_ input: DescribeUnHandleEventTabListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUnHandleEventTabListResponse > {
        self.client.execute(action: "DescribeUnHandleEventTabList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 告警中心伪攻击链事件未处置接口
    ///
    /// DescribeUnHandleEventTabList 告警中心伪攻击链事件未处置接口
    @inlinable
    public func describeUnHandleEventTabList(_ input: DescribeUnHandleEventTabListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnHandleEventTabListResponse {
        try await self.client.execute(action: "DescribeUnHandleEventTabList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUnHandleEventTabList请求参数结构体
    public struct DescribeUnHandleEventTabListRequest: TCRequestModel {
        /// 开始时间
        public let startTime: String
        
        /// 结束时间
        public let endTime: String
        
        /// 查询示例ID
        public let assetID: String?
        
        public init (startTime: String, endTime: String, assetID: String?) {
            self.startTime = startTime
            self.endTime = endTime
            self.assetID = assetID
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case assetID = "AssetID"
        }
    }
    
    /// DescribeUnHandleEventTabList返回参数结构体
    public struct DescribeUnHandleEventTabListResponse: TCResponseModel {
        /// 租户伪攻击链未处置事件
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: UnHandleEvent
        
        /// 错误码，0成功 非0错误
        public let returnCode: Int64
        
        /// 返回信息 success成功
        public let returnMsg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }
}
