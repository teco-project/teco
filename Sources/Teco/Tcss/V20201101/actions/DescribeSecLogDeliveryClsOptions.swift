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
    /// DescribeSecLogDeliveryClsOptions请求参数结构体
    public struct DescribeSecLogDeliveryClsOptionsRequest: TCRequestModel {
        /// 地域
        public let clsRegion: String?
        
        public init (clsRegion: String? = nil) {
            self.clsRegion = clsRegion
        }
        
        enum CodingKeys: String, CodingKey {
            case clsRegion = "ClsRegion"
        }
    }
    
    /// DescribeSecLogDeliveryClsOptions返回参数结构体
    public struct DescribeSecLogDeliveryClsOptionsResponse: TCResponseModel {
        /// cls可选日志集合列表(仅当入参ClsRegion不为空时返回)
        public let logSetList: [ClsLogsetInfo]
        
        /// 可选地域列表(仅当入参ClsRegion为空时返回)
        public let regionList: [RegionInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logSetList = "LogSetList"
            case regionList = "RegionList"
            case requestId = "RequestId"
        }
    }
    
    /// 查询安全日志投递cls可选项
    @inlinable
    public func describeSecLogDeliveryClsOptions(_ input: DescribeSecLogDeliveryClsOptionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecLogDeliveryClsOptionsResponse > {
        self.client.execute(action: "DescribeSecLogDeliveryClsOptions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询安全日志投递cls可选项
    @inlinable
    public func describeSecLogDeliveryClsOptions(_ input: DescribeSecLogDeliveryClsOptionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecLogDeliveryClsOptionsResponse {
        try await self.client.execute(action: "DescribeSecLogDeliveryClsOptions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
