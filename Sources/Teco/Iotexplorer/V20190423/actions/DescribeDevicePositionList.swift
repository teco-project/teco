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

extension Iotexplorer {
    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(_ input: DescribeDevicePositionListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDevicePositionListResponse > {
        self.client.execute(action: "DescribeDevicePositionList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备位置列表
    @inlinable
    public func describeDevicePositionList(_ input: DescribeDevicePositionListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionListResponse {
        try await self.client.execute(action: "DescribeDevicePositionList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDevicePositionList请求参数结构体
    public struct DescribeDevicePositionListRequest: TCRequestModel {
        /// 产品标识列表
        public let productIdList: [String]
        
        /// 坐标类型
        public let coordinateType: Int64?
        
        /// 分页偏移
        public let offset: Int64?
        
        /// 分页的大小
        public let limit: Int64?
        
        public init (productIdList: [String], coordinateType: Int64?, offset: Int64?, limit: Int64?) {
            self.productIdList = productIdList
            self.coordinateType = coordinateType
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case productIdList = "ProductIdList"
            case coordinateType = "CoordinateType"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDevicePositionList返回参数结构体
    public struct DescribeDevicePositionListResponse: TCResponseModel {
        /// 产品设备位置信息列表
        public let positions: [ProductDevicesPositionItem]
        
        /// 产品设备位置信息的数目
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case positions = "Positions"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
