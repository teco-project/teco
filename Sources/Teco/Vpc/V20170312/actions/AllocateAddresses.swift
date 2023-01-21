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

extension Vpc {
    /// AllocateAddresses请求参数结构体
    public struct AllocateAddressesRequest: TCRequestModel {
        /// EIP数量。默认值：1。
        public let addressCount: Int64?

        /// EIP线路类型。默认值：BGP。
        /// <ul style="margin:0"><li>已开通静态单线IP白名单的用户，可选值：<ul><li>CMCC：中国移动</li>
        /// <li>CTCC：中国电信</li>
        /// <li>CUCC：中国联通</li></ul>注意：仅部分地域支持静态单线IP。</li></ul>
        public let internetServiceProvider: String?

        /// EIP计费方式。
        /// <ul style="margin:0"><li>已开通标准账户类型白名单的用户，可选值：<ul><li>BANDWIDTH_PACKAGE：[共享带宽包](https://cloud.tencent.com/document/product/684/15255)付费（需额外开通共享带宽包白名单）</li>
        /// <li>BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费</li>
        /// <li>BANDWIDTH_PREPAID_BY_MONTH：包月按带宽预付费</li>
        /// <li>TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费</li></ul>默认值：TRAFFIC_POSTPAID_BY_HOUR。</li>
        /// <li>未开通标准账户类型白名单的用户，EIP计费方式与其绑定的实例的计费方式一致，无需传递此参数。</li></ul>
        public let internetChargeType: String?

        /// EIP出带宽上限，单位：Mbps。
        /// <ul style="margin:0"><li>已开通标准账户类型白名单的用户，可选值范围取决于EIP计费方式：<ul><li>BANDWIDTH_PACKAGE：1 Mbps 至 1000 Mbps</li>
        /// <li>BANDWIDTH_POSTPAID_BY_HOUR：1 Mbps 至 100 Mbps</li>
        /// <li>BANDWIDTH_PREPAID_BY_MONTH：1 Mbps 至 200 Mbps</li>
        /// <li>TRAFFIC_POSTPAID_BY_HOUR：1 Mbps 至 100 Mbps</li></ul>默认值：1 Mbps。</li>
        /// <li>未开通标准账户类型白名单的用户，EIP出带宽上限取决于与其绑定的实例的公网出带宽上限，无需传递此参数。</li></ul>
        public let internetMaxBandwidthOut: Int64?

        /// 包月按带宽预付费EIP的计费参数。EIP为包月按带宽预付费时，该参数必传，其余场景不需传递
        public let addressChargePrepaid: AddressChargePrepaid?

        /// EIP类型。默认值：EIP。
        /// <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>AnycastEIP：加速IP，可参见 [Anycast 公网加速](https://cloud.tencent.com/document/product/644)</li></ul>注意：仅部分地域支持加速IP。</li></ul>
        /// <ul style="margin:0"><li>已开通精品IP白名单的用户，可选值：<ul><li>HighQualityEIP：精品IP</li></ul>注意：仅部分地域支持精品IP。</li></ul>
        public let addressType: String?

        /// Anycast发布域。
        /// <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>ANYCAST_ZONE_GLOBAL：全球发布域（需要额外开通Anycast全球加速白名单）</li><li>ANYCAST_ZONE_OVERSEAS：境外发布域</li><li><b>[已废弃]</b> ANYCAST_ZONE_A：发布域A（已更新为全球发布域）</li><li><b>[已废弃]</b> ANYCAST_ZONE_B：发布域B（已更新为全球发布域）</li></ul>默认值：ANYCAST_ZONE_OVERSEAS。</li></ul>
        public let anycastZone: String?

        /// <b>[已废弃]</b> AnycastEIP不再区分是否负载均衡。原参数说明如下：
        /// AnycastEIP是否用于绑定负载均衡。
        /// <ul style="margin:0"><li>已开通Anycast公网加速白名单的用户，可选值：<ul><li>TRUE：AnycastEIP可绑定对象为负载均衡</li>
        /// <li>FALSE：AnycastEIP可绑定对象为云服务器、NAT网关、高可用虚拟IP等</li></ul>默认值：FALSE。</li></ul>
        public let applicableForCLB: Bool?

        /// 需要关联的标签列表。
        public let tags: [Tag]?

        /// BGP带宽包唯一ID参数。设定该参数且InternetChargeType为BANDWIDTH_PACKAGE，则表示创建的EIP加入该BGP带宽包并采用带宽包计费
        public let bandwidthPackageId: String?

        /// EIP名称，用于申请EIP时用户自定义该EIP的个性化名称，默认值：未命名
        public let addressName: String?

        public init(addressCount: Int64? = nil, internetServiceProvider: String? = nil, internetChargeType: String? = nil, internetMaxBandwidthOut: Int64? = nil, addressChargePrepaid: AddressChargePrepaid? = nil, addressType: String? = nil, anycastZone: String? = nil, applicableForCLB: Bool? = nil, tags: [Tag]? = nil, bandwidthPackageId: String? = nil, addressName: String? = nil) {
            self.addressCount = addressCount
            self.internetServiceProvider = internetServiceProvider
            self.internetChargeType = internetChargeType
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.addressChargePrepaid = addressChargePrepaid
            self.addressType = addressType
            self.anycastZone = anycastZone
            self.applicableForCLB = applicableForCLB
            self.tags = tags
            self.bandwidthPackageId = bandwidthPackageId
            self.addressName = addressName
        }

        enum CodingKeys: String, CodingKey {
            case addressCount = "AddressCount"
            case internetServiceProvider = "InternetServiceProvider"
            case internetChargeType = "InternetChargeType"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case addressChargePrepaid = "AddressChargePrepaid"
            case addressType = "AddressType"
            case anycastZone = "AnycastZone"
            case applicableForCLB = "ApplicableForCLB"
            case tags = "Tags"
            case bandwidthPackageId = "BandwidthPackageId"
            case addressName = "AddressName"
        }
    }

    /// AllocateAddresses返回参数结构体
    public struct AllocateAddressesResponse: TCResponseModel {
        /// 申请到的 EIP 的唯一 ID 列表。
        public let addressSet: [String]

        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case addressSet = "AddressSet"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建弹性公网IP
    ///
    /// 本接口 (AllocateAddresses) 用于申请一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * EIP 是专为动态云计算设计的静态 IP 地址。借助 EIP，您可以快速将 EIP 重新映射到您的另一个实例上，从而屏蔽实例故障。
    /// * 您的 EIP 与腾讯云账户相关联，而不是与某个实例相关联。在您选择显式释放该地址，或欠费超过24小时之前，它会一直与您的腾讯云账户保持关联。
    /// * 一个腾讯云账户在每个地域能申请的 EIP 最大配额有所限制，可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)，上述配额可通过 DescribeAddressQuota 接口获取。
    @inlinable
    public func allocateAddresses(_ input: AllocateAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateAddressesResponse> {
        self.client.execute(action: "AllocateAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建弹性公网IP
    ///
    /// 本接口 (AllocateAddresses) 用于申请一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * EIP 是专为动态云计算设计的静态 IP 地址。借助 EIP，您可以快速将 EIP 重新映射到您的另一个实例上，从而屏蔽实例故障。
    /// * 您的 EIP 与腾讯云账户相关联，而不是与某个实例相关联。在您选择显式释放该地址，或欠费超过24小时之前，它会一直与您的腾讯云账户保持关联。
    /// * 一个腾讯云账户在每个地域能申请的 EIP 最大配额有所限制，可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)，上述配额可通过 DescribeAddressQuota 接口获取。
    @inlinable
    public func allocateAddresses(_ input: AllocateAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateAddressesResponse {
        try await self.client.execute(action: "AllocateAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建弹性公网IP
    ///
    /// 本接口 (AllocateAddresses) 用于申请一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * EIP 是专为动态云计算设计的静态 IP 地址。借助 EIP，您可以快速将 EIP 重新映射到您的另一个实例上，从而屏蔽实例故障。
    /// * 您的 EIP 与腾讯云账户相关联，而不是与某个实例相关联。在您选择显式释放该地址，或欠费超过24小时之前，它会一直与您的腾讯云账户保持关联。
    /// * 一个腾讯云账户在每个地域能申请的 EIP 最大配额有所限制，可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)，上述配额可通过 DescribeAddressQuota 接口获取。
    @inlinable
    public func allocateAddresses(addressCount: Int64? = nil, internetServiceProvider: String? = nil, internetChargeType: String? = nil, internetMaxBandwidthOut: Int64? = nil, addressChargePrepaid: AddressChargePrepaid? = nil, addressType: String? = nil, anycastZone: String? = nil, applicableForCLB: Bool? = nil, tags: [Tag]? = nil, bandwidthPackageId: String? = nil, addressName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateAddressesResponse> {
        self.allocateAddresses(AllocateAddressesRequest(addressCount: addressCount, internetServiceProvider: internetServiceProvider, internetChargeType: internetChargeType, internetMaxBandwidthOut: internetMaxBandwidthOut, addressChargePrepaid: addressChargePrepaid, addressType: addressType, anycastZone: anycastZone, applicableForCLB: applicableForCLB, tags: tags, bandwidthPackageId: bandwidthPackageId, addressName: addressName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建弹性公网IP
    ///
    /// 本接口 (AllocateAddresses) 用于申请一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
    /// * EIP 是专为动态云计算设计的静态 IP 地址。借助 EIP，您可以快速将 EIP 重新映射到您的另一个实例上，从而屏蔽实例故障。
    /// * 您的 EIP 与腾讯云账户相关联，而不是与某个实例相关联。在您选择显式释放该地址，或欠费超过24小时之前，它会一直与您的腾讯云账户保持关联。
    /// * 一个腾讯云账户在每个地域能申请的 EIP 最大配额有所限制，可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)，上述配额可通过 DescribeAddressQuota 接口获取。
    @inlinable
    public func allocateAddresses(addressCount: Int64? = nil, internetServiceProvider: String? = nil, internetChargeType: String? = nil, internetMaxBandwidthOut: Int64? = nil, addressChargePrepaid: AddressChargePrepaid? = nil, addressType: String? = nil, anycastZone: String? = nil, applicableForCLB: Bool? = nil, tags: [Tag]? = nil, bandwidthPackageId: String? = nil, addressName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateAddressesResponse {
        try await self.allocateAddresses(AllocateAddressesRequest(addressCount: addressCount, internetServiceProvider: internetServiceProvider, internetChargeType: internetChargeType, internetMaxBandwidthOut: internetMaxBandwidthOut, addressChargePrepaid: addressChargePrepaid, addressType: addressType, anycastZone: anycastZone, applicableForCLB: applicableForCLB, tags: tags, bandwidthPackageId: bandwidthPackageId, addressName: addressName), region: region, logger: logger, on: eventLoop)
    }
}
