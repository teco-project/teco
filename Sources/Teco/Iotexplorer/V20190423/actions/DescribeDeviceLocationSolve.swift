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

extension Iotexplorer {
    /// 获取实时位置解析
    ///
    /// 获取实时位置解析
    @inlinable
    public func describeDeviceLocationSolve(_ input: DescribeDeviceLocationSolveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceLocationSolveResponse > {
        self.client.execute(action: "DescribeDeviceLocationSolve", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取实时位置解析
    ///
    /// 获取实时位置解析
    @inlinable
    public func describeDeviceLocationSolve(_ input: DescribeDeviceLocationSolveRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceLocationSolveResponse {
        try await self.client.execute(action: "DescribeDeviceLocationSolve", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeviceLocationSolve请求参数结构体
    public struct DescribeDeviceLocationSolveRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 定位解析类型，wifi或GNSSNavigation
        public let locationType: String
        
        /// LoRaEdge卫星导航电文
        public let gnssNavigation: String?
        
        /// wifi信息
        public let wiFiInfo: [WifiInfo]?
        
        public init (productId: String, deviceName: String, locationType: String, gnssNavigation: String?, wiFiInfo: [WifiInfo]?) {
            self.productId = productId
            self.deviceName = deviceName
            self.locationType = locationType
            self.gnssNavigation = gnssNavigation
            self.wiFiInfo = wiFiInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case locationType = "LocationType"
            case gnssNavigation = "GNSSNavigation"
            case wiFiInfo = "WiFiInfo"
        }
    }
    
    /// DescribeDeviceLocationSolve返回参数结构体
    public struct DescribeDeviceLocationSolveResponse: TCResponseModel {
        /// 经度
        public let longitude: Float
        
        /// 纬度
        public let latitude: Float
        
        /// 类型
        public let locationType: String
        
        /// 误差精度预估，单位为米
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accuracy: Float?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case longitude = "Longitude"
            case latitude = "Latitude"
            case locationType = "LocationType"
            case accuracy = "Accuracy"
            case requestId = "RequestId"
        }
    }
}