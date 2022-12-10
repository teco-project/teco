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
    /// 查询安全日志投递Cls配置
    @inlinable
    public func describeSecLogDeliveryClsSetting(_ input: DescribeSecLogDeliveryClsSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecLogDeliveryClsSettingResponse > {
        self.client.execute(action: "DescribeSecLogDeliveryClsSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询安全日志投递Cls配置
    @inlinable
    public func describeSecLogDeliveryClsSetting(_ input: DescribeSecLogDeliveryClsSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogDeliveryClsSettingResponse {
        try await self.client.execute(action: "DescribeSecLogDeliveryClsSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecLogDeliveryClsSetting请求参数结构体
    public struct DescribeSecLogDeliveryClsSettingRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeSecLogDeliveryClsSetting返回参数结构体
    public struct DescribeSecLogDeliveryClsSettingResponse: TCResponseModel {
        /// 日志类型列表
        public let logTypeList: [SecLogDeliveryClsSettingInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logTypeList = "LogTypeList"
            case requestId = "RequestId"
        }
    }
}
