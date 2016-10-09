#include <flyingwhales/maths/vector3.hpp>

#include <cmath>

namespace fw
{

	Vector3::Vector3()
		: Metric3()
	{}

	Vector3::Vector3(const Metric3<float> &metric)
		: Metric3(metric)
	{}

	Vector3 &Vector3::multiply(const float &scalar)
	{
		x *= scalar;
		y *= scalar;
		z *= scalar;

		return *this;
	}

	Vector3 Vector3::operator*(const float &scalar) const
	{
		auto copy = *this;
		return copy.multiply(scalar);
	}

	Vector3 &Vector3::operator*=(const float &scalar)
	{
		return multiply(scalar);
	}

	Vector3 &Vector3::normalize()
	{
		float scale = 1.0f / magnitude();
		x *= scale;
		y *= scale;
		z *= scale;

		return *this;
	}

	Vector3 Vector3::normalize(Vector3 vector)
	{
		return vector.normalize();
	}

	Vector3 Vector3::cross(const Vector3 &left, const Vector3 &right)
	{
		return Vector3(
			(left.y * right.z) - (left.z * right.y),
			(left.z * right.x) - (left.x * right.z),
			(left.x * right.y) - (left.y * right.x));
	}

	float Vector3::dot(const Vector3 &other) const
	{
		return (x * other.x) + (y * other.y) + (z * other.z);
	}

	float Vector3::dot(const Vector3 &left, const Vector3 &right)
	{
		return left.dot(right);
	}

	float Vector3::magnitude_squared() const
	{
		return (x * x) + (y * y) + (z * z);
	}

	float Vector3::magnitude() const
	{
		return std::sqrt(magnitude_squared());
	}

}