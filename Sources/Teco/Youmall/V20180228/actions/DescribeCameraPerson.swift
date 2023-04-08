//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension Youmall {
    /// DescribeCameraPerson请求参数结构体
    public struct DescribeCameraPersonRequest: TCRequestModel {
        /// 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        public let companyId: String

        /// 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取
        public let shopId: Int64

        /// 摄像头id
        public let cameraId: Int64

        /// 拉取开始时间戳，单位秒
        public let startTime: Int64

        /// 拉取结束时间戳，单位秒，不超过StartTime+10秒，超过默认为StartTime+10
        public let endTime: Int64

        /// pos机id
        public let posId: String?

        /// 拉取图片数，默认为1，最大为3
        public let num: Int64?

        /// 是否需要base64的图片，0-不需要，1-需要，默认0
        public let isNeedPic: Int64?

        public init(companyId: String, shopId: Int64, cameraId: Int64, startTime: Int64, endTime: Int64, posId: String? = nil, num: Int64? = nil, isNeedPic: Int64? = nil) {
            self.companyId = companyId
            self.shopId = shopId
            self.cameraId = cameraId
            self.startTime = startTime
            self.endTime = endTime
            self.posId = posId
            self.num = num
            self.isNeedPic = isNeedPic
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case cameraId = "CameraId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case posId = "PosId"
            case num = "Num"
            case isNeedPic = "IsNeedPic"
        }
    }

    /// DescribeCameraPerson返回参数结构体
    public struct DescribeCameraPersonResponse: TCResponseModel {
        /// 集团id
        public let companyId: String

        /// 店铺id
        public let shopId: Int64

        /// 摄像机id
        public let cameraId: Int64

        /// pos机id
        public let posId: String

        /// 抓取的顾客信息
        public let infos: [CameraPersonInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case cameraId = "CameraId"
            case posId = "PosId"
            case infos = "Infos"
            case requestId = "RequestId"
        }
    }

    /// 获取收银台前顾客身份ID
    ///
    /// 通过指定设备ID和指定时段，获取该时段内中收银台摄像设备抓取到顾客头像及身份ID
    @inlinable
    public func describeCameraPerson(_ input: DescribeCameraPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCameraPersonResponse> {
        self.client.execute(action: "DescribeCameraPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取收银台前顾客身份ID
    ///
    /// 通过指定设备ID和指定时段，获取该时段内中收银台摄像设备抓取到顾客头像及身份ID
    @inlinable
    public func describeCameraPerson(_ input: DescribeCameraPersonRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCameraPersonResponse {
        try await self.client.execute(action: "DescribeCameraPerson", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取收银台前顾客身份ID
    ///
    /// 通过指定设备ID和指定时段，获取该时段内中收银台摄像设备抓取到顾客头像及身份ID
    @inlinable
    public func describeCameraPerson(companyId: String, shopId: Int64, cameraId: Int64, startTime: Int64, endTime: Int64, posId: String? = nil, num: Int64? = nil, isNeedPic: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCameraPersonResponse> {
        self.describeCameraPerson(.init(companyId: companyId, shopId: shopId, cameraId: cameraId, startTime: startTime, endTime: endTime, posId: posId, num: num, isNeedPic: isNeedPic), region: region, logger: logger, on: eventLoop)
    }

    /// 获取收银台前顾客身份ID
    ///
    /// 通过指定设备ID和指定时段，获取该时段内中收银台摄像设备抓取到顾客头像及身份ID
    @inlinable
    public func describeCameraPerson(companyId: String, shopId: Int64, cameraId: Int64, startTime: Int64, endTime: Int64, posId: String? = nil, num: Int64? = nil, isNeedPic: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCameraPersonResponse {
        try await self.describeCameraPerson(.init(companyId: companyId, shopId: shopId, cameraId: cameraId, startTime: startTime, endTime: endTime, posId: posId, num: num, isNeedPic: isNeedPic), region: region, logger: logger, on: eventLoop)
    }
}
